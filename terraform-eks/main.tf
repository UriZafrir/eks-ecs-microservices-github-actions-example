provider "aws" {
  region = local.region
}

data "aws_caller_identity" "current" {}
data "aws_availability_zones" "available" {}


locals {
  name            = "commit-cluster"
  cluster_version = "1.29"
  region          = "eu-central-1"

  vpc_cidr = "10.1.0.0/16"
  azs      = slice(data.aws_availability_zones.available.names, 0, 3)

  tags = {
    cluster    = local.name
  }
}

# module "kubernetes_resources" {
#   source = "./kubernetes"
# }

###############################################################################
#EKS Module
###############################################################################

module "eks" {
  source = "terraform-aws-modules/eks/aws"

  cluster_name                   = local.name
  cluster_version                = local.cluster_version
  cluster_endpoint_public_access = true 

  enable_cluster_creator_admin_permissions = true 

  # Enable EFA support by adding necessary security group rules
  # to the shared node security group
  enable_efa_support = true
  #create_node_security_group = true  
  node_security_group_name = "node_security_group"
  cluster_security_group_name = "cluster_security_group_name"


  cluster_addons = {
    coredns = {
      most_recent = true 
    }
    kube-proxy = {
      most_recent = true
    }
    vpc-cni = {
      most_recent    = true
      before_compute = true
      configuration_values = jsonencode({
        env = {
          # Reference docs https://docs.aws.amazon.com/eks/latest/userguide/cni-increase-ip-addresses.html
          ENABLE_PREFIX_DELEGATION = "true"
          WARM_PREFIX_TARGET       = "1"
        }
      })
    }
  }

  vpc_id                   = module.vpc.vpc_id
  subnet_ids               = module.vpc.private_subnets
  control_plane_subnet_ids = module.vpc.intra_subnets

  eks_managed_node_group_defaults = {
    ami_type       = "AL2_x86_64"
    instance_types = ["t2.medium"]
  }

  eks_managed_node_groups = {
    # Default node group - as provided by AWS EKS
    default_node_group = {
      # By default, the module creates a launch template to ensure tags are propagated to instances, etc.,
      # so we need to disable it to use the default template provided by the AWS EKS managed node group service
      use_custom_launch_template = false

      disk_size = 50

      # Remote access cannot be specified with a launch template
      remote_access = {
        ec2_ssh_key               = module.key_pair.key_pair_name 
        source_security_group_ids = [aws_security_group.remote_access.id]
      

      min_size     = 1
      max_size     = 1
      desired_size = 1
      capacity_type        = "SPOT"

      }
    }
  }

  access_entries = {
    # One access entry with a policy associated
    ex-single = {
      kubernetes_groups = []
      principal_arn     = aws_iam_role.this["single"].arn  

      policy_associations = {
        single = {
          policy_arn = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSViewPolicy"
          access_scope = {
            namespaces = ["default"]
            type       = "namespace"
          }
        }
      }
    }
      ex-single = {
      kubernetes_groups = []
      principal_arn     = "arn:aws:iam::463865334882:user/ECR-user"  

      policy_associations = {
        single = {
          policy_arn = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSAdminPolicy"
          access_scope = {
            type        ="cluster"
            #type       = "STANDARD"
          }
        }
      }
    }
  } 

  tags = local.tags
}


################################################################################
# Supporting Resources
################################################################################

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 5.0"

  name = local.name
  cidr = local.vpc_cidr

  azs             = local.azs
  private_subnets = [for k, v in local.azs : cidrsubnet(local.vpc_cidr, 4, k)]
  public_subnets  = [for k, v in local.azs : cidrsubnet(local.vpc_cidr, 8, k + 48)]
  intra_subnets   = [for k, v in local.azs : cidrsubnet(local.vpc_cidr, 8, k + 52)]

  enable_nat_gateway     = true
  single_nat_gateway     = true
  enable_ipv6            = true
  create_egress_only_igw = true

  public_subnet_ipv6_prefixes                    = [0, 1, 2]
  public_subnet_assign_ipv6_address_on_creation  = true
  private_subnet_ipv6_prefixes                   = [3, 4, 5]
  private_subnet_assign_ipv6_address_on_creation = true
  intra_subnet_ipv6_prefixes                     = [6, 7, 8]
  intra_subnet_assign_ipv6_address_on_creation   = true

  public_subnet_tags = {
    "kubernetes.io/role/elb" = 1
  }

  private_subnet_tags = {
    "kubernetes.io/role/internal-elb" = 1
  }

  tags = local.tags
}


module "key_pair" {
  source  = "terraform-aws-modules/key-pair/aws"
  version = "~> 2.0"

  key_name_prefix    = local.name
  create_private_key = true

  tags = local.tags
}

resource "aws_security_group" "remote_access" {
  name_prefix = "${local.name}-remote-access"
  description = "Allow remote SSH access"
  vpc_id      = module.vpc.vpc_id

  ingress {
    description = "SSH access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/8"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = merge(local.tags, { Name = "${local.name}-remote" })
}

resource "aws_iam_role" "this" {
  for_each = toset(["single", "multiple"])

  name = "ex-${each.key}"

  # Just using for this example
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = "Example"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })

  tags = local.tags
}

resource "aws_vpc_peering_connection" "eks_to_other_vpc" {
  provider     = aws
  peer_vpc_id  = var.peer_vpc_id  
  vpc_id       = module.vpc.vpc_id
  auto_accept  = true

  accepter {
    allow_remote_vpc_dns_resolution = true
  }

  requester {
    allow_remote_vpc_dns_resolution = true
  }
}

# Security rule allowing traffic from the CIDR range 10.1.0.0/16 to RDS (MySQL) on port 3306
resource "aws_security_group_rule" "allow_eks_mysql" {
  security_group_id = var.db_security_group_id
  type              = "ingress"
  from_port         = 3306
  to_port           = 3306
  protocol          = "tcp"
  cidr_blocks       = [local.vpc_cidr]
}


# add route to both route tables
resource "aws_route" "to_eks_vpc" {
  route_table_id           = var.peer_vpc_route_table_id
  destination_cidr_block   = local.vpc_cidr  
  vpc_peering_connection_id = aws_vpc_peering_connection.eks_to_other_vpc.id
  
}

resource "aws_route" "eks_private_to_peer_vpc" {
  route_table_id           = module.vpc.private_route_table_ids[0]
  destination_cidr_block   = var.peer_vpc_cidr  
  vpc_peering_connection_id = aws_vpc_peering_connection.eks_to_other_vpc.id
}
resource "aws_route" "eks_public_to_peer_vpc" {
  route_table_id           = module.vpc.public_route_table_ids[0]
  destination_cidr_block   = var.peer_vpc_cidr  
  vpc_peering_connection_id = aws_vpc_peering_connection.eks_to_other_vpc.id
}

# #security rule allowing eks node group to rds
# resource "aws_security_group_rule" "allow_eks_mysql" {
#   security_group_id = var.db_security_group_id
#   type              = "ingress"
#   from_port         = 3306
#   to_port           = 3306
#   protocol          = "tcp"
#   source_security_group_id = module.eks.node_security_group_id
# }


# resource "aws_iam_policy" "node_additional" {
#   name        = "${local.name}-additional"
#   description = "Example usage of node additional policy"

#   policy = jsonencode({
#     Version = "2012-10-17"
#     Statement = [
#       {
#         Action = [
#           "ec2:Describe*",
#         ]
#         Effect   = "Allow"
#         Resource = "*"
#       },
#     ]
#   })

#   tags = local.tags
# }

# data "aws_ami" "eks_default" {
#   most_recent = true
#   owners      = ["amazon"]

#   filter {
#     name   = "name"
#     values = ["amazon-eks-node-${local.cluster_version}-v*"]
#   }
# }

# data "aws_ami" "eks_default_arm" {
#   most_recent = true
#   owners      = ["amazon"]

#   filter {
#     name   = "name"
#     values = ["amazon-eks-arm64-node-${local.cluster_version}-v*"]
#   }
# }

# data "aws_ami" "eks_default_bottlerocket" {
#   most_recent = true
#   owners      = ["amazon"]

#   filter {
#     name   = "name"
#     values = ["bottlerocket-aws-k8s-${local.cluster_version}-x86_64-*"]
#   }
# }

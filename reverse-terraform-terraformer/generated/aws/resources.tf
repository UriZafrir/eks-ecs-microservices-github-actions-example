resource "aws_cloudformation_stack" "tfer--ECS-Console-V2-Service-commit-flask-nginx-gunicorn-ecs-cluster-commit-f6d2d898" {
  capabilities       = ["CAPABILITY_NAMED_IAM"]
  disable_rollback   = "false"
  name               = "ECS-Console-V2-Service-commit-flask-nginx-gunicorn-ecs-cluster-commit-f6d2d898"
  template_body      = "{\"AWSTemplateFormatVersion\":\"2010-09-09\",\"Description\":\"The template used to create an ECS Service from the ECS Console.\",\"Outputs\":{\"ClusterName\":{\"Description\":\"The cluster used to create the service.\",\"Value\":{\"Ref\":\"ECSClusterName\"}},\"ECSService\":{\"Description\":\"The created service.\",\"Value\":{\"Ref\":\"ECSService\"}}},\"Parameters\":{\"ECSClusterName\":{\"Default\":\"ecs-cluster-commit\",\"Type\":\"String\"},\"ECSServiceName\":{\"Default\":\"commit-flask-nginx-gunicorn\",\"Type\":\"String\"},\"LoadBalancerName\":{\"Default\":\"\",\"Type\":\"String\"},\"SecurityGroupName\":{\"Default\":\"commit-flask-nginx-gunicorn\",\"Type\":\"CommaDelimitedList\"},\"SubnetIDs\":{\"Default\":\"subnet-0cfb6ea70b3a80760\",\"Type\":\"CommaDelimitedList\"},\"VpcID\":{\"Default\":\"vpc-013a5f430cc61641d\",\"Type\":\"String\"}},\"Resources\":{\"ECSService\":{\"Properties\":{\"CapacityProviderStrategy\":[{\"Base\":0,\"CapacityProvider\":\"FARGATE\",\"Weight\":1}],\"Cluster\":\"ecs-cluster-commit\",\"DeploymentConfiguration\":{\"DeploymentCircuitBreaker\":{\"Enable\":false,\"Rollback\":false},\"MaximumPercent\":200,\"MinimumHealthyPercent\":100},\"DeploymentController\":{\"Type\":\"ECS\"},\"DesiredCount\":1,\"EnableECSManagedTags\":true,\"NetworkConfiguration\":{\"AwsvpcConfiguration\":{\"AssignPublicIp\":\"ENABLED\",\"SecurityGroups\":[{\"Ref\":\"SecurityGroup\"}],\"Subnets\":{\"Ref\":\"SubnetIDs\"}}},\"PlatformVersion\":\"LATEST\",\"SchedulingStrategy\":\"REPLICA\",\"ServiceConnectConfiguration\":{\"Enabled\":false},\"ServiceName\":\"commit-flask-nginx-gunicorn\",\"Tags\":[],\"TaskDefinition\":\"arn:aws:ecs:eu-central-1:463865334882:task-definition/commit-flask-nginx-gunicorn:1\"},\"Type\":\"AWS::ECS::Service\"},\"SecurityGroup\":{\"Properties\":{\"GroupDescription\":\"commit-flask-nginx-gunicorn\",\"GroupName\":\"commit-flask-nginx-gunicorn\",\"SecurityGroupIngress\":[{\"CidrIp\":\"0.0.0.0/0\",\"FromPort\":80,\"IpProtocol\":\"tcp\",\"ToPort\":80},{\"CidrIpv6\":\"::/0\",\"FromPort\":80,\"IpProtocol\":\"tcp\",\"ToPort\":80},{\"CidrIp\":\"0.0.0.0/0\",\"FromPort\":443,\"IpProtocol\":\"tcp\",\"ToPort\":443},{\"CidrIpv6\":\"::/0\",\"FromPort\":443,\"IpProtocol\":\"tcp\",\"ToPort\":443}],\"VpcId\":\"vpc-013a5f430cc61641d\"},\"Type\":\"AWS::EC2::SecurityGroup\"}}}"
  timeout_in_minutes = "0"
}

resource "aws_cloudformation_stack" "tfer--ECS-Console-V2-Service-commit-flask-nginx-gunicorn-v2-ecs-cluster-commit-affb04e1" {
  capabilities       = ["CAPABILITY_NAMED_IAM"]
  disable_rollback   = "false"
  name               = "ECS-Console-V2-Service-commit-flask-nginx-gunicorn-v2-ecs-cluster-commit-affb04e1"
  template_body      = "{\"AWSTemplateFormatVersion\":\"2010-09-09\",\"Description\":\"The template used to create an ECS Service from the ECS Console.\",\"Outputs\":{\"ClusterName\":{\"Description\":\"The cluster used to create the service.\",\"Value\":{\"Ref\":\"ECSClusterName\"}},\"ECSService\":{\"Description\":\"The created service.\",\"Value\":{\"Ref\":\"ECSService\"}}},\"Parameters\":{\"ECSClusterName\":{\"Default\":\"ecs-cluster-commit\",\"Type\":\"String\"},\"ECSServiceName\":{\"Default\":\"commit-flask-nginx-gunicorn-v2\",\"Type\":\"String\"},\"LoadBalancerName\":{\"Default\":\"\",\"Type\":\"String\"},\"SecurityGroupIDs\":{\"Default\":\"sg-01b766028fb997925\",\"Type\":\"CommaDelimitedList\"},\"SubnetIDs\":{\"Default\":\"subnet-0cfb6ea70b3a80760\",\"Type\":\"CommaDelimitedList\"},\"VpcID\":{\"Default\":\"vpc-013a5f430cc61641d\",\"Type\":\"String\"}},\"Resources\":{\"ECSService\":{\"Properties\":{\"CapacityProviderStrategy\":[{\"Base\":0,\"CapacityProvider\":\"FARGATE\",\"Weight\":1}],\"Cluster\":\"ecs-cluster-commit\",\"DeploymentConfiguration\":{\"DeploymentCircuitBreaker\":{\"Enable\":false,\"Rollback\":false},\"MaximumPercent\":200,\"MinimumHealthyPercent\":100},\"DeploymentController\":{\"Type\":\"ECS\"},\"DesiredCount\":1,\"EnableECSManagedTags\":true,\"NetworkConfiguration\":{\"AwsvpcConfiguration\":{\"AssignPublicIp\":\"ENABLED\",\"SecurityGroups\":{\"Ref\":\"SecurityGroupIDs\"},\"Subnets\":{\"Ref\":\"SubnetIDs\"}}},\"PlatformVersion\":\"LATEST\",\"SchedulingStrategy\":\"REPLICA\",\"ServiceConnectConfiguration\":{\"Enabled\":false},\"ServiceName\":\"commit-flask-nginx-gunicorn-v2\",\"Tags\":[],\"TaskDefinition\":\"arn:aws:ecs:eu-central-1:463865334882:task-definition/commit-flask-nginx-gunicorn-v2:1\"},\"Type\":\"AWS::ECS::Service\"}}}"
  timeout_in_minutes = "0"
}

resource "aws_cloudformation_stack" "tfer--ECS-Console-V2-Service-commit-openressty-ecs-cluster-commit-b0e395e8" {
  capabilities       = ["CAPABILITY_NAMED_IAM"]
  disable_rollback   = "false"
  name               = "ECS-Console-V2-Service-commit-openressty-ecs-cluster-commit-b0e395e8"
  template_body      = "{\"AWSTemplateFormatVersion\":\"2010-09-09\",\"Description\":\"The template used to create an ECS Service from the ECS Console.\",\"Outputs\":{\"ClusterName\":{\"Description\":\"The cluster used to create the service.\",\"Value\":{\"Ref\":\"ECSClusterName\"}},\"ECSService\":{\"Description\":\"The created service.\",\"Value\":{\"Ref\":\"ECSService\"}}},\"Parameters\":{\"ECSClusterName\":{\"Default\":\"ecs-cluster-commit\",\"Type\":\"String\"},\"ECSServiceName\":{\"Default\":\"commit-openressty\",\"Type\":\"String\"},\"LoadBalancerName\":{\"Default\":\"\",\"Type\":\"String\"},\"SecurityGroupIDs\":{\"Default\":\"sg-012ed2715bcff3120\",\"Type\":\"CommaDelimitedList\"},\"SubnetIDs\":{\"Default\":\"subnet-0cfb6ea70b3a80760,subnet-0f9d6e3234742f47c\",\"Type\":\"CommaDelimitedList\"},\"VpcID\":{\"Default\":\"vpc-013a5f430cc61641d\",\"Type\":\"String\"}},\"Resources\":{\"ECSService\":{\"Properties\":{\"CapacityProviderStrategy\":[{\"Base\":0,\"CapacityProvider\":\"FARGATE\",\"Weight\":1}],\"Cluster\":\"ecs-cluster-commit\",\"DeploymentConfiguration\":{\"DeploymentCircuitBreaker\":{\"Enable\":true,\"Rollback\":true},\"MaximumPercent\":200,\"MinimumHealthyPercent\":100},\"DeploymentController\":{\"Type\":\"ECS\"},\"DesiredCount\":1,\"EnableECSManagedTags\":true,\"NetworkConfiguration\":{\"AwsvpcConfiguration\":{\"AssignPublicIp\":\"ENABLED\",\"SecurityGroups\":{\"Ref\":\"SecurityGroupIDs\"},\"Subnets\":{\"Ref\":\"SubnetIDs\"}}},\"PlatformVersion\":\"LATEST\",\"SchedulingStrategy\":\"REPLICA\",\"ServiceConnectConfiguration\":{\"Enabled\":false},\"ServiceName\":\"commit-openressty\",\"Tags\":[],\"TaskDefinition\":\"arn:aws:ecs:eu-central-1:463865334882:task-definition/commit-openresty:4\"},\"Type\":\"AWS::ECS::Service\"}}}"
  timeout_in_minutes = "0"
}

resource "aws_cloudformation_stack" "tfer--ECS-Console-V2-Service-commit-openresty-ecs-cluster-commit-f3649492" {
  capabilities       = ["CAPABILITY_NAMED_IAM"]
  disable_rollback   = "false"
  name               = "ECS-Console-V2-Service-commit-openresty-ecs-cluster-commit-f3649492"
  template_body      = "{\"AWSTemplateFormatVersion\":\"2010-09-09\",\"Description\":\"The template used to create an ECS Service from the ECS Console.\",\"Outputs\":{\"ClusterName\":{\"Description\":\"The cluster used to create the service.\",\"Value\":{\"Ref\":\"ECSClusterName\"}},\"ECSService\":{\"Description\":\"The created service.\",\"Value\":{\"Ref\":\"ECSService\"}}},\"Parameters\":{\"ECSClusterName\":{\"Default\":\"ecs-cluster-commit\",\"Type\":\"String\"},\"ECSServiceName\":{\"Default\":\"commit-openresty\",\"Type\":\"String\"},\"LoadBalancerName\":{\"Default\":\"\",\"Type\":\"String\"},\"SecurityGroupName\":{\"Default\":\"commit-openresty\",\"Type\":\"CommaDelimitedList\"},\"SubnetIDs\":{\"Default\":\"subnet-0cfb6ea70b3a80760,subnet-0f9d6e3234742f47c\",\"Type\":\"CommaDelimitedList\"},\"VpcID\":{\"Default\":\"vpc-013a5f430cc61641d\",\"Type\":\"String\"}},\"Resources\":{\"ECSService\":{\"Properties\":{\"CapacityProviderStrategy\":[{\"Base\":0,\"CapacityProvider\":\"FARGATE\",\"Weight\":1}],\"Cluster\":\"ecs-cluster-commit\",\"DeploymentConfiguration\":{\"DeploymentCircuitBreaker\":{\"Enable\":true,\"Rollback\":true},\"MaximumPercent\":200,\"MinimumHealthyPercent\":100},\"DeploymentController\":{\"Type\":\"ECS\"},\"DesiredCount\":1,\"EnableECSManagedTags\":true,\"NetworkConfiguration\":{\"AwsvpcConfiguration\":{\"AssignPublicIp\":\"ENABLED\",\"SecurityGroups\":[{\"Ref\":\"SecurityGroup\"}],\"Subnets\":{\"Ref\":\"SubnetIDs\"}}},\"PlatformVersion\":\"LATEST\",\"SchedulingStrategy\":\"REPLICA\",\"ServiceConnectConfiguration\":{\"Enabled\":false},\"ServiceName\":\"commit-openresty\",\"Tags\":[],\"TaskDefinition\":\"arn:aws:ecs:eu-central-1:463865334882:task-definition/commit-openresty:1\"},\"Type\":\"AWS::ECS::Service\"},\"SecurityGroup\":{\"Properties\":{\"GroupDescription\":\"commit-openresty\",\"GroupName\":\"commit-openresty\",\"SecurityGroupIngress\":[{\"CidrIp\":\"0.0.0.0/0\",\"FromPort\":443,\"IpProtocol\":\"tcp\",\"ToPort\":443},{\"CidrIpv6\":\"::/0\",\"FromPort\":443,\"IpProtocol\":\"tcp\",\"ToPort\":443}],\"VpcId\":\"vpc-013a5f430cc61641d\"},\"Type\":\"AWS::EC2::SecurityGroup\"}}}"
  timeout_in_minutes = "0"
}

resource "aws_cloudformation_stack" "tfer--Infra-ECS-Cluster-ecs-cluster-commit-1965cfca" {
  capabilities       = ["CAPABILITY_NAMED_IAM"]
  disable_rollback   = "false"
  name               = "Infra-ECS-Cluster-ecs-cluster-commit-1965cfca"
  template_body      = "{\"AWSTemplateFormatVersion\":\"2010-09-09\",\"Description\":\"The template used to create an ECS Cluster from the ECS Console.\",\"Outputs\":{\"ECSCluster\":{\"Description\":\"The created cluster.\",\"Value\":{\"Ref\":\"ECSCluster\"}}},\"Parameters\":{\"ECSClusterName\":{\"Default\":\"ecs-cluster-commit\",\"Description\":\"Specifies the ECS Cluster Name with which the resources would be associated\",\"Type\":\"String\"},\"SecurityGroupIds\":{\"Default\":\"\",\"Description\":\"Optional - Specifies the Comma separated list of the Security Group Id of an existing Security Group.\",\"Type\":\"CommaDelimitedList\"},\"SubnetIds\":{\"Default\":\"\",\"Description\":\"Optional - Specifies the Comma separated list of existing VPC Subnet Ids where ECS instances will run\",\"Type\":\"CommaDelimitedList\"},\"VpcId\":{\"AllowedPattern\":\"^(?:vpc-[0-9a-f]{8,17}|)$\",\"ConstraintDescription\":\"VPC Id must begin with 'vpc-' and have a valid uuid\",\"Default\":\"\",\"Description\":\"Optional - Specifies the ID of an existing VPC in which to launch your container instances. If you specify a VPC ID, you must specify a list of existing subnets in that VPC. If you do not specify a VPC ID, a new VPC is created with at least 1 subnet.\",\"Type\":\"String\"}},\"Resources\":{\"ECSCluster\":{\"Properties\":{\"CapacityProviders\":[\"FARGATE\",\"FARGATE_SPOT\"],\"ClusterName\":{\"Ref\":\"ECSClusterName\"},\"ClusterSettings\":[{\"Name\":\"containerInsights\",\"Value\":\"disabled\"}],\"Configuration\":{\"ExecuteCommandConfiguration\":{\"Logging\":\"DEFAULT\"}},\"ServiceConnectDefaults\":{\"Namespace\":\"ecs-cluster-commit\"},\"Tags\":[]},\"Type\":\"AWS::ECS::Cluster\"}}}"
  timeout_in_minutes = "0"
}

resource "aws_cloudfront_cache_policy" "tfer--08627262-05a9-4f76-9ded-b50ca2e3a84f" {
  comment     = "Policy for Elemental MediaPackage Origin"
  default_ttl = "86400"
  max_ttl     = "31536000"
  min_ttl     = "0"
  name        = "Managed-Elemental-MediaPackage"

  parameters_in_cache_key_and_forwarded_to_origin {
    cookies_config {
      cookie_behavior = "none"
    }

    enable_accept_encoding_brotli = "false"
    enable_accept_encoding_gzip   = "true"

    headers_config {
      header_behavior = "whitelist"

      headers {
        items = ["origin"]
      }
    }

    query_strings_config {
      query_string_behavior = "whitelist"

      query_strings {
        items = ["aws.manifestfilter", "end", "m", "start"]
      }
    }
  }
}

resource "aws_cloudfront_cache_policy" "tfer--2e54312d-136d-493c-8eb9-b001f22f67d2" {
  comment     = "Policy for Amplify Origin"
  default_ttl = "2"
  max_ttl     = "600"
  min_ttl     = "2"
  name        = "Managed-Amplify"

  parameters_in_cache_key_and_forwarded_to_origin {
    cookies_config {
      cookie_behavior = "all"
    }

    enable_accept_encoding_brotli = "true"
    enable_accept_encoding_gzip   = "true"

    headers_config {
      header_behavior = "whitelist"

      headers {
        items = ["Authorization", "CloudFront-Viewer-Country", "Host"]
      }
    }

    query_strings_config {
      query_string_behavior = "all"
    }
  }
}

resource "aws_cloudfront_cache_policy" "tfer--4135ea2d-6df8-44a3-9df3-4b5a84be39ad" {
  comment     = "Policy with caching disabled"
  default_ttl = "0"
  max_ttl     = "0"
  min_ttl     = "0"
  name        = "Managed-CachingDisabled"

  parameters_in_cache_key_and_forwarded_to_origin {
    cookies_config {
      cookie_behavior = "none"
    }

    enable_accept_encoding_brotli = "false"
    enable_accept_encoding_gzip   = "false"

    headers_config {
      header_behavior = "none"
    }

    query_strings_config {
      query_string_behavior = "none"
    }
  }
}

resource "aws_cloudfront_cache_policy" "tfer--658327ea-f89d-4fab-a63d-7e88639e58f6" {
  comment     = "Policy with caching enabled. Supports Gzip and Brotli compression."
  default_ttl = "86400"
  max_ttl     = "31536000"
  min_ttl     = "1"
  name        = "Managed-CachingOptimized"

  parameters_in_cache_key_and_forwarded_to_origin {
    cookies_config {
      cookie_behavior = "none"
    }

    enable_accept_encoding_brotli = "true"
    enable_accept_encoding_gzip   = "true"

    headers_config {
      header_behavior = "none"
    }

    query_strings_config {
      query_string_behavior = "none"
    }
  }
}

resource "aws_cloudfront_cache_policy" "tfer--b2884449-e4de-46a7-ac36-70bc7f1ddd6d" {
  comment     = "Default policy when compression is disabled"
  default_ttl = "86400"
  max_ttl     = "31536000"
  min_ttl     = "1"
  name        = "Managed-CachingOptimizedForUncompressedObjects"

  parameters_in_cache_key_and_forwarded_to_origin {
    cookies_config {
      cookie_behavior = "none"
    }

    enable_accept_encoding_brotli = "false"
    enable_accept_encoding_gzip   = "false"

    headers_config {
      header_behavior = "none"
    }

    query_strings_config {
      query_string_behavior = "none"
    }
  }
}

resource "aws_cloudwatch_event_rule" "tfer--AutoScalingManagedRule" {
  description    = "This rule is used to route Instance notifications to EC2 Auto Scaling"
  event_bus_name = "default"
  event_pattern  = "{\"detail-type\":[\"EC2 Instance Rebalance Recommendation\",\"EC2 Spot Instance Interruption Warning\"],\"source\":[\"aws.ec2\"]}"
  is_enabled     = "true"
  name           = "AutoScalingManagedRule"
  state          = "ENABLED"
}

resource "aws_cloudwatch_event_rule" "tfer--codepipeline-commit-latest-199883-rule" {
  description    = "Amazon CloudWatch Events rule to automatically start your pipeline when a change occurs in the Amazon ECR image tag. Deleting this may prevent changes from being detected in that pipeline. Read more: http://docs.aws.amazon.com/codepipeline/latest/userguide/pipelines-about-starting.html"
  event_bus_name = "default"
  event_pattern  = "{\"detail\":{\"action-type\":[\"PUSH\"],\"image-tag\":[\"latest\"],\"repository-name\":[\"commit_fargate_nginx\"],\"result\":[\"SUCCESS\"]},\"detail-type\":[\"ECR Image Action\"],\"source\":[\"aws.ecr\"]}"
  is_enabled     = "true"
  name           = "codepipeline-commit-latest-199883-rule"
  state          = "ENABLED"
}

resource "aws_cloudwatch_event_rule" "tfer--codepipeline-commit-latest-715794-rule" {
  description    = "Amazon CloudWatch Events rule to automatically start your pipeline when a change occurs in the Amazon ECR image tag. Deleting this may prevent changes from being detected in that pipeline. Read more: http://docs.aws.amazon.com/codepipeline/latest/userguide/pipelines-about-starting.html"
  event_bus_name = "default"
  event_pattern  = "{\"detail\":{\"action-type\":[\"PUSH\"],\"image-tag\":[\"latest\"],\"repository-name\":[\"commit-fargate-openresty\"],\"result\":[\"SUCCESS\"]},\"detail-type\":[\"ECR Image Action\"],\"source\":[\"aws.ecr\"]}"
  is_enabled     = "true"
  name           = "codepipeline-commit-latest-715794-rule"
  state          = "ENABLED"
}

resource "aws_cloudwatch_event_rule" "tfer--codepipeline-commit-latest-822412-rule" {
  description    = "Amazon CloudWatch Events rule to automatically start your pipeline when a change occurs in the Amazon ECR image tag. Deleting this may prevent changes from being detected in that pipeline. Read more: http://docs.aws.amazon.com/codepipeline/latest/userguide/pipelines-about-starting.html"
  event_bus_name = "default"
  event_pattern  = "{\"detail\":{\"action-type\":[\"PUSH\"],\"image-tag\":[\"latest\"],\"repository-name\":[\"commit_fargate_python\"],\"result\":[\"SUCCESS\"]},\"detail-type\":[\"ECR Image Action\"],\"source\":[\"aws.ecr\"]}"
  is_enabled     = "true"
  name           = "codepipeline-commit-latest-822412-rule"
  state          = "ENABLED"
}

resource "aws_cloudwatch_event_target" "tfer--AutoScalingManagedRule-002F-autoscaling" {
  arn       = "arn:aws:autoscaling:eu-central-1:::"
  rule      = "AutoScalingManagedRule"
  target_id = "autoscaling"
}

resource "aws_cloudwatch_event_target" "tfer--codepipeline-commit-latest-199883-rule-002F-codepipeline-nginx-ECR-to-ECS" {
  arn       = "arn:aws:codepipeline:eu-central-1:463865334882:nginx-ECR-to-ECS"
  role_arn  = "arn:aws:iam::463865334882:role/service-role/cwe-role-eu-central-1-nginx-ECR-to-ECS"
  rule      = "codepipeline-commit-latest-199883-rule"
  target_id = "codepipeline-nginx-ECR-to-ECS"
}

resource "aws_cloudwatch_event_target" "tfer--codepipeline-commit-latest-715794-rule-002F-codepipeline-openresty-ECR-to-ECS" {
  arn       = "arn:aws:codepipeline:eu-central-1:463865334882:openresty-ECR-to-ECS"
  role_arn  = "arn:aws:iam::463865334882:role/service-role/cwe-role-eu-central-1-openresty-ECR-to-ECS"
  rule      = "codepipeline-commit-latest-715794-rule"
  target_id = "codepipeline-openresty-ECR-to-ECS"
}

resource "aws_cloudwatch_event_target" "tfer--codepipeline-commit-latest-715794-rule-002F-codepipeline-openresty-ecr-to-eks" {
  arn       = "arn:aws:codepipeline:eu-central-1:463865334882:openresty-ecr-to-eks"
  role_arn  = "arn:aws:iam::463865334882:role/service-role/cwe-role-eu-central-1-openresty-ecr-to-eks"
  rule      = "codepipeline-commit-latest-715794-rule"
  target_id = "codepipeline-openresty-ecr-to-eks"
}

resource "aws_cloudwatch_event_target" "tfer--codepipeline-commit-latest-822412-rule-002F-codepipeline-python-ECR-to-ECS" {
  arn       = "arn:aws:codepipeline:eu-central-1:463865334882:python-ECR-to-ECS"
  role_arn  = "arn:aws:iam::463865334882:role/service-role/cwe-role-eu-central-1-python-ECR-to-ECS"
  rule      = "codepipeline-commit-latest-822412-rule"
  target_id = "codepipeline-python-ECR-to-ECS"
}

resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-codebuild-002F-commit-ECR-to-EKS" {
  log_group_class = "STANDARD"
  name            = "/aws/codebuild/commit-ECR-to-EKS"
  skip_destroy    = "false"
}

resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-codebuild-002F-commit-nginx-build" {
  log_group_class = "STANDARD"
  name            = "/aws/codebuild/commit-nginx-build"
  skip_destroy    = "false"
}

resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-codebuild-002F-commit-openresty-build" {
  log_group_class = "STANDARD"
  name            = "/aws/codebuild/commit-openresty-build"
  skip_destroy    = "false"
}

resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-codebuild-002F-commit-python-build" {
  log_group_class = "STANDARD"
  name            = "/aws/codebuild/commit-python-build"
  skip_destroy    = "false"
}

resource "aws_cloudwatch_log_group" "tfer---002F-ecs-002F-commit-flask-nginx-gunicorn-v2" {
  log_group_class = "STANDARD"
  name            = "/ecs/commit-flask-nginx-gunicorn-v2"
  skip_destroy    = "false"
}

resource "aws_cloudwatch_log_group" "tfer---002F-ecs-002F-commit-openresty" {
  log_group_class = "STANDARD"
  name            = "/ecs/commit-openresty"
  skip_destroy    = "false"
}

resource "aws_cloudwatch_log_group" "tfer---002F-ecs-002F-nginx-commit" {
  log_group_class = "STANDARD"
  name            = "/ecs/nginx-commit"
  skip_destroy    = "false"
}

resource "aws_codebuild_project" "tfer--commit-ECR-to-EKS" {
  artifacts {
    encryption_disabled    = "false"
    name                   = "commit-ECR-to-EKS"
    override_artifact_name = "false"
    packaging              = "NONE"
    type                   = "CODEPIPELINE"
  }

  badge_enabled = "false"
  build_timeout = "60"

  cache {
    type = "NO_CACHE"
  }

  concurrent_build_limit = "0"
  encryption_key         = "arn:aws:kms:eu-central-1:463865334882:alias/aws/s3"

  environment {
    compute_type                = "BUILD_GENERAL1_SMALL"
    image                       = "aws/codebuild/amazonlinux2-x86_64-standard:5.0"
    image_pull_credentials_type = "CODEBUILD"
    privileged_mode             = "false"
    type                        = "LINUX_CONTAINER"
  }

  logs_config {
    cloudwatch_logs {
      status = "ENABLED"
    }

    s3_logs {
      encryption_disabled = "false"
      status              = "DISABLED"
    }
  }

  name               = "commit-ECR-to-EKS"
  project_visibility = "PRIVATE"
  queued_timeout     = "480"
  service_role       = "arn:aws:iam::463865334882:role/service-role/codebuild-commit-ECR-to-EKS-service-role"

  source {
    buildspec           = "#need to add secrets to aws secrets\nversion: 0.2\nenv:\n  secrets-manager:\n    AWS_ECR_ACCESS_KEY_ID: AWS_ECR_ACCESS_KEY_ID\n    AWS_ECR_SECRET_ACCESS_KEY: AWS_ECR_SECRET_ACCESS_KEY\n  variables:\n    REGION: \"eu-central-1\"\n    ACCOUNT_ID: \"463865334882\"\n\nphases:\n  post_build:\n    commands:  \n      # Get AWS Credential       \n      - aws configure set aws_access_key_id $AWS_ECR_ACCESS_KEY_ID\n      - aws configure set aws_secret_access_key $AWS_ECR_SECRET_ACCESS_KEY  \n      # Login to ECR Registry \n      - echo \"Login in to Amazon ECR Registry\"\n      - aws ecr get-login-password --region $REGION | docker login --username AWS --password-stdin $ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com\n\n      # Updating kubectl with your EKS Cluster              \n      - echo \"Update Kube Config configuration\"      \n      - aws eks update-kubeconfig --region $REGION --name commit-cluster\n\n      # Show time, applying manifests changes using kubectl\n      - echo \"kubectl apply\"            \n      - kubectl apply -f kubernetes-openresty.yaml\n      - echo \"Kubernetes changes applied\"           \n"
    git_clone_depth     = "0"
    insecure_ssl        = "false"
    report_build_status = "false"
    type                = "CODEPIPELINE"
  }
}

resource "aws_codebuild_project" "tfer--commit-nginx-build" {
  artifacts {
    encryption_disabled    = "false"
    name                   = "commit-nginx-build"
    override_artifact_name = "false"
    packaging              = "NONE"
    type                   = "CODEPIPELINE"
  }

  badge_enabled = "false"
  build_timeout = "60"

  cache {
    type = "NO_CACHE"
  }

  concurrent_build_limit = "0"
  encryption_key         = "arn:aws:kms:eu-central-1:463865334882:alias/aws/s3"

  environment {
    compute_type                = "BUILD_GENERAL1_SMALL"
    image                       = "aws/codebuild/amazonlinux2-x86_64-standard:5.0"
    image_pull_credentials_type = "CODEBUILD"
    privileged_mode             = "false"
    type                        = "LINUX_CONTAINER"
  }

  logs_config {
    cloudwatch_logs {
      status = "ENABLED"
    }

    s3_logs {
      encryption_disabled = "false"
      status              = "DISABLED"
    }
  }

  name               = "commit-nginx-build"
  project_visibility = "PRIVATE"
  queued_timeout     = "480"
  service_role       = "arn:aws:iam::463865334882:role/service-role/codebuild-commit-nginx-build-service-role"

  source {
    buildspec           = "version: 0.2\n\nphases:\n  build:\n    commands:\n       - printf '[{\"name\":\"nginx\",\"imageUri\":\"463865334882.dkr.ecr.eu-central-1.amazonaws.com/commit_fargate_nginx:latest\"}]' > imagedefinitions.json\nartifacts:\n    files: imagedefinitions.json"
    git_clone_depth     = "0"
    insecure_ssl        = "false"
    report_build_status = "false"
    type                = "CODEPIPELINE"
  }
}

resource "aws_codebuild_project" "tfer--commit-openresty-build" {
  artifacts {
    encryption_disabled    = "false"
    override_artifact_name = "false"
    type                   = "NO_ARTIFACTS"
  }

  badge_enabled = "false"
  build_timeout = "60"

  cache {
    type = "NO_CACHE"
  }

  concurrent_build_limit = "0"
  encryption_key         = "arn:aws:kms:eu-central-1:463865334882:alias/aws/s3"

  environment {
    compute_type                = "BUILD_GENERAL1_SMALL"
    image                       = "aws/codebuild/amazonlinux2-x86_64-standard:5.0"
    image_pull_credentials_type = "CODEBUILD"
    privileged_mode             = "false"
    type                        = "LINUX_CONTAINER"
  }

  logs_config {
    cloudwatch_logs {
      status = "ENABLED"
    }

    s3_logs {
      encryption_disabled = "false"
      status              = "DISABLED"
    }
  }

  name               = "commit-openresty-build"
  project_visibility = "PRIVATE"
  queued_timeout     = "480"
  service_role       = "arn:aws:iam::463865334882:role/service-role/codebuild-commit-openresty-build-service-role"

  source {
    buildspec           = "version: 0.2\n\nphases:\n  build:\n    commands:\n       - printf '[{\"name\":\"openresty\",\"imageUri\":\"463865334882.dkr.ecr.eu-central-1.amazonaws.com/commit-fargate-openresty\"}]' > imagedefinitions.json\nartifacts:\n    files: imagedefinitions.json"
    git_clone_depth     = "0"
    insecure_ssl        = "false"
    report_build_status = "false"
    type                = "NO_SOURCE"
  }
}

resource "aws_codebuild_project" "tfer--commit-python-build" {
  artifacts {
    encryption_disabled    = "false"
    name                   = "commit-python-build"
    override_artifact_name = "false"
    packaging              = "NONE"
    type                   = "CODEPIPELINE"
  }

  badge_enabled = "false"
  build_timeout = "60"

  cache {
    type = "NO_CACHE"
  }

  concurrent_build_limit = "0"
  encryption_key         = "arn:aws:kms:eu-central-1:463865334882:alias/aws/s3"

  environment {
    compute_type                = "BUILD_GENERAL1_SMALL"
    image                       = "aws/codebuild/amazonlinux2-x86_64-standard:5.0"
    image_pull_credentials_type = "CODEBUILD"
    privileged_mode             = "false"
    type                        = "LINUX_CONTAINER"
  }

  logs_config {
    cloudwatch_logs {
      status = "ENABLED"
    }

    s3_logs {
      encryption_disabled = "false"
      status              = "DISABLED"
    }
  }

  name               = "commit-python-build"
  project_visibility = "PRIVATE"
  queued_timeout     = "480"
  service_role       = "arn:aws:iam::463865334882:role/service-role/codebuild-commit-python-build-service-role"

  source {
    buildspec           = "version: 0.2\n\nphases:\n  build:\n    commands:\n       - printf '[{\"name\":\"python-server\",\"imageUri\":\"463865334882.dkr.ecr.eu-central-1.amazonaws.com/commit_fargate_python:latest\"}]' > imagedefinitions.json\nartifacts:\n    files: imagedefinitions.json"
    git_clone_depth     = "0"
    insecure_ssl        = "false"
    report_build_status = "false"
    type                = "CODEPIPELINE"
  }
}

resource "aws_codedeploy_app" "tfer--commit-deploy" {
  compute_platform = "ECS"
  name             = "commit-deploy"
}

resource "aws_codepipeline" "tfer--nginx-ECR-to-ECS" {
  artifact_store {
    location = "codepipeline-eu-central-1-581888077454"
    type     = "S3"
  }

  execution_mode = "SUPERSEDED"
  name           = "nginx-ECR-to-ECS"
  pipeline_type  = "V2"
  role_arn       = "arn:aws:iam::463865334882:role/service-role/AWSCodePipelineServiceRole-eu-central-1-nginx-ECR-to-ECS"

  stage {
    action {
      category = "Build"

      configuration = {
        ProjectName = "commit-nginx-build"
      }

      input_artifacts  = ["SourceArtifact"]
      name             = "Build"
      namespace        = "BuildVariables"
      output_artifacts = ["BuildArtifact"]
      owner            = "AWS"
      provider         = "CodeBuild"
      region           = "eu-central-1"
      run_order        = "1"
      version          = "1"
    }

    name = "Build"
  }

  stage {
    action {
      category = "Deploy"

      configuration = {
        ClusterName = "ecs-cluster-commit"
        FileName    = "imagedefinitions.json"
        ServiceName = "commit-flask-nginx-gunicorn-v2"
      }

      input_artifacts = ["BuildArtifact"]
      name            = "Deploy"
      namespace       = "DeployVariables"
      owner           = "AWS"
      provider        = "ECS"
      region          = "eu-central-1"
      run_order       = "1"
      version         = "1"
    }

    name = "Deploy"
  }

  stage {
    action {
      category = "Source"

      configuration = {
        RepositoryName = "commit_fargate_nginx"
      }

      name             = "Source"
      namespace        = "SourceVariables"
      output_artifacts = ["SourceArtifact"]
      owner            = "AWS"
      provider         = "ECR"
      region           = "eu-central-1"
      run_order        = "1"
      version          = "1"
    }

    name = "Source"
  }
}

resource "aws_codepipeline" "tfer--openresty-ECR-to-ECS" {
  artifact_store {
    location = "codepipeline-eu-central-1-581888077454"
    type     = "S3"
  }

  execution_mode = "SUPERSEDED"
  name           = "openresty-ECR-to-ECS"
  pipeline_type  = "V2"
  role_arn       = "arn:aws:iam::463865334882:role/service-role/AWSCodePipelineServiceRole-eu-central-1-openresty-ECR-to-ECS"

  stage {
    action {
      category = "Build"

      configuration = {
        ProjectName = "commit-openresty-build"
      }

      input_artifacts  = ["SourceArtifact"]
      name             = "Build"
      namespace        = "BuildVariables"
      output_artifacts = ["BuildArtifact"]
      owner            = "AWS"
      provider         = "CodeBuild"
      region           = "eu-central-1"
      run_order        = "1"
      version          = "1"
    }

    name = "Build"
  }

  stage {
    action {
      category = "Deploy"

      configuration = {
        ClusterName = "ecs-cluster-commit"
        FileName    = "imagedefinitions.json"
        ServiceName = "commit-openressty"
      }

      input_artifacts = ["BuildArtifact"]
      name            = "Deploy"
      namespace       = "DeployVariables"
      owner           = "AWS"
      provider        = "ECS"
      region          = "eu-central-1"
      run_order       = "1"
      version         = "1"
    }

    name = "Deploy"
  }

  stage {
    action {
      category = "Source"

      configuration = {
        RepositoryName = "commit-fargate-openresty"
      }

      name             = "Source"
      namespace        = "SourceVariables"
      output_artifacts = ["SourceArtifact"]
      owner            = "AWS"
      provider         = "ECR"
      region           = "eu-central-1"
      run_order        = "1"
      version          = "1"
    }

    name = "Source"
  }
}

resource "aws_codepipeline" "tfer--openresty-ecr-to-eks" {
  artifact_store {
    location = "codepipeline-eu-central-1-581888077454"
    type     = "S3"
  }

  execution_mode = "SUPERSEDED"
  name           = "openresty-ecr-to-eks"
  pipeline_type  = "V2"
  role_arn       = "arn:aws:iam::463865334882:role/service-role/AWSCodePipelineServiceRole-eu-central-1-openresty-ecr-to-eks"

  stage {
    action {
      category = "Build"

      configuration = {
        ProjectName = "commit-ECR-to-EKS"
      }

      input_artifacts  = ["SourceArtifact"]
      name             = "Build"
      namespace        = "BuildVariables"
      output_artifacts = ["BuildArtifact"]
      owner            = "AWS"
      provider         = "CodeBuild"
      region           = "eu-central-1"
      run_order        = "1"
      version          = "1"
    }

    name = "Build"
  }

  stage {
    action {
      category = "Source"

      configuration = {
        RepositoryName = "commit-fargate-openresty"
      }

      name             = "Source"
      namespace        = "SourceVariables"
      output_artifacts = ["SourceArtifact"]
      owner            = "AWS"
      provider         = "ECR"
      region           = "eu-central-1"
      run_order        = "1"
      version          = "1"
    }

    name = "Source"
  }
}

resource "aws_codepipeline" "tfer--python-ECR-to-ECS" {
  artifact_store {
    location = "codepipeline-eu-central-1-581888077454"
    type     = "S3"
  }

  execution_mode = "SUPERSEDED"
  name           = "python-ECR-to-ECS"
  pipeline_type  = "V2"
  role_arn       = "arn:aws:iam::463865334882:role/service-role/AWSCodePipelineServiceRole-eu-central-1-python-ECR-to-ECS"

  stage {
    action {
      category = "Build"

      configuration = {
        ProjectName = "commit-python-build"
      }

      input_artifacts  = ["SourceArtifact"]
      name             = "Build"
      namespace        = "BuildVariables"
      output_artifacts = ["BuildArtifact"]
      owner            = "AWS"
      provider         = "CodeBuild"
      region           = "eu-central-1"
      run_order        = "1"
      version          = "1"
    }

    name = "Build"
  }

  stage {
    action {
      category = "Deploy"

      configuration = {
        ClusterName = "ecs-cluster-commit"
        FileName    = "imagedefinitions.json"
        ServiceName = "commit-flask-nginx-gunicorn-v2"
      }

      input_artifacts = ["BuildArtifact"]
      name            = "Deploy"
      namespace       = "DeployVariables"
      owner           = "AWS"
      provider        = "ECS"
      region          = "eu-central-1"
      run_order       = "1"
      version         = "1"
    }

    name = "Deploy"
  }

  stage {
    action {
      category = "Source"

      configuration = {
        RepositoryName = "commit_fargate_python"
      }

      name             = "Source"
      namespace        = "SourceVariables"
      output_artifacts = ["SourceArtifact"]
      owner            = "AWS"
      provider         = "ECR"
      region           = "eu-central-1"
      run_order        = "1"
      version          = "1"
    }

    name = "Source"
  }
}

resource "aws_db_instance" "tfer--database-1" {
  allocated_storage                     = "20"
  auto_minor_version_upgrade            = "true"
  availability_zone                     = "eu-central-1a"
  backup_retention_period               = "0"
  backup_target                         = "region"
  backup_window                         = "20:06-20:36"
  ca_cert_identifier                    = "rds-ca-rsa2048-g1"
  copy_tags_to_snapshot                 = "true"
  customer_owned_ip_enabled             = "false"
  db_subnet_group_name                  = "${aws_db_subnet_group.tfer--default-vpc-013a5f430cc61641d.name}"
  deletion_protection                   = "false"
  engine                                = "mysql"
  engine_version                        = "8.0.35"
  iam_database_authentication_enabled   = "false"
  identifier                            = "database-1"
  instance_class                        = "db.t2.micro"
  iops                                  = "0"
  license_model                         = "general-public-license"
  maintenance_window                    = "tue:02:33-tue:03:03"
  max_allocated_storage                 = "1000"
  monitoring_interval                   = "0"
  multi_az                              = "false"
  network_type                          = "IPV4"
  option_group_name                     = "default:mysql-8-0"
  parameter_group_name                  = "default.mysql8.0"
  performance_insights_enabled          = "false"
  performance_insights_retention_period = "0"
  port                                  = "3306"
  publicly_accessible                   = "true"
  storage_encrypted                     = "false"
  storage_throughput                    = "0"
  storage_type                          = "gp2"
  username                              = "admin"
  vpc_security_group_ids                = ["${data.terraform_remote_state.local.outputs.aws_security_group_tfer--db_sg-07ce994535f7be639_id}"]
}

resource "aws_db_subnet_group" "tfer--default-vpc-013a5f430cc61641d" {
  description = "Created from the RDS Management Console"
  name        = "default-vpc-013a5f430cc61641d"
  subnet_ids  = ["${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-0cfb6ea70b3a80760_id}", "${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-0f9d6e3234742f47c_id}"]
}

resource "aws_default_network_acl" "tfer--acl-0573fe25b9a5b267c" {
  egress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  ingress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  subnet_ids = ["${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-06d28d16f98685e35_id}", "${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-08bb05ee1d0272a48_id}", "${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-0cfb6ea70b3a80760_id}", "${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-0f9d6e3234742f47c_id}", "${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-0fbd442a212d3eb60_id}"]
}

resource "aws_docdb_subnet_group" "tfer--default-vpc-013a5f430cc61641d" {
  description = "Created from the RDS Management Console"
  name        = "default-vpc-013a5f430cc61641d"
  subnet_ids  = ["subnet-0cfb6ea70b3a80760", "subnet-0f9d6e3234742f47c"]
}

resource "aws_ecr_repository" "tfer--commit-fargate-openresty" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = "false"
  }

  image_tag_mutability = "MUTABLE"
  name                 = "commit-fargate-openresty"
}

resource "aws_ecr_repository" "tfer--commit_fargate_nginx" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = "false"
  }

  image_tag_mutability = "MUTABLE"
  name                 = "commit_fargate_nginx"
}

resource "aws_ecr_repository" "tfer--commit_fargate_python" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = "false"
  }

  image_tag_mutability = "MUTABLE"
  name                 = "commit_fargate_python"
}

resource "aws_ecr_repository" "tfer--commit_nginx" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = "false"
  }

  image_tag_mutability = "MUTABLE"
  name                 = "commit_nginx"
}

resource "aws_ecr_repository" "tfer--commit_python" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = "false"
  }

  image_tag_mutability = "MUTABLE"
  name                 = "commit_python"
}

resource "aws_ecs_cluster" "tfer--ecs-cluster-commit" {
  configuration {
    execute_command_configuration {
      logging = "DEFAULT"
    }
  }

  name = "ecs-cluster-commit"

  service_connect_defaults {
    namespace = "arn:aws:servicediscovery:eu-central-1:463865334882:namespace/ns-4r5cgycjuihmhzaf"
  }

  setting {
    name  = "containerInsights"
    value = "disabled"
  }

  tags = {
    cluster = "commit"
  }

  tags_all = {
    cluster = "commit"
  }
}

resource "aws_ecs_service" "tfer--ecs-cluster-commit_commit-flask-nginx-gunicorn-v2" {
  capacity_provider_strategy {
    base              = "0"
    capacity_provider = "FARGATE"
    weight            = "1"
  }

  cluster = "ecs-cluster-commit"

  deployment_circuit_breaker {
    enable   = "false"
    rollback = "false"
  }

  deployment_controller {
    type = "ECS"
  }

  deployment_maximum_percent         = "200"
  deployment_minimum_healthy_percent = "100"
  desired_count                      = "0"
  enable_ecs_managed_tags            = "true"
  enable_execute_command             = "false"
  health_check_grace_period_seconds  = "0"
  name                               = "commit-flask-nginx-gunicorn-v2"

  network_configuration {
    assign_public_ip = "true"
    security_groups  = ["${data.terraform_remote_state.local.outputs.aws_security_group_tfer--commit-flask-nginx-gunicorn_sg-01b766028fb997925_id}"]
    subnets          = ["${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-0cfb6ea70b3a80760_id}"]
  }

  platform_version    = "LATEST"
  scheduling_strategy = "REPLICA"

  tags = {
    service = "nginx+flask"
  }

  tags_all = {
    service = "nginx+flask"
  }

  task_definition = "arn:aws:ecs:eu-central-1:463865334882:task-definition/commit-flask-nginx-gunicorn-v2:19"
}

resource "aws_ecs_service" "tfer--ecs-cluster-commit_commit-openressty" {
  capacity_provider_strategy {
    base              = "0"
    capacity_provider = "FARGATE"
    weight            = "1"
  }

  cluster = "ecs-cluster-commit"

  deployment_circuit_breaker {
    enable   = "false"
    rollback = "false"
  }

  deployment_controller {
    type = "ECS"
  }

  deployment_maximum_percent         = "200"
  deployment_minimum_healthy_percent = "100"
  desired_count                      = "0"
  enable_ecs_managed_tags            = "true"
  enable_execute_command             = "false"
  health_check_grace_period_seconds  = "0"
  name                               = "commit-openressty"

  network_configuration {
    assign_public_ip = "true"
    security_groups  = ["${data.terraform_remote_state.local.outputs.aws_security_group_tfer--commit-openresty_sg-012ed2715bcff3120_id}"]
    subnets          = ["${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-0cfb6ea70b3a80760_id}", "${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-0f9d6e3234742f47c_id}"]
  }

  platform_version    = "1.4.0"
  scheduling_strategy = "REPLICA"

  tags = {
    service = "openresty"
  }

  tags_all = {
    service = "openresty"
  }

  task_definition = "arn:aws:ecs:eu-central-1:463865334882:task-definition/commit-openresty:13"
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-commit-flask-nginx-gunicorn" {
  container_definitions    = "[{\"cpu\":0,\"dependsOn\":[{\"condition\":\"START\",\"containerName\":\"python-server\"}],\"environment\":[],\"environmentFiles\":[],\"essential\":true,\"image\":\"urizaf/commit-docker-nginx:latest\",\"links\":[\"python-server\"],\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-create-group\":\"true\",\"awslogs-group\":\"/ecs/commit-flask-nginx-gunicorn\",\"awslogs-region\":\"eu-central-1\",\"awslogs-stream-prefix\":\"ecs\"},\"secretOptions\":[]},\"mountPoints\":[],\"name\":\"nginx\",\"portMappings\":[{\"appProtocol\":\"http\",\"containerPort\":80,\"hostPort\":0,\"name\":\"commit-docker-nginx-80-tcp\",\"protocol\":\"tcp\"},{\"appProtocol\":\"http\",\"containerPort\":443,\"hostPort\":0,\"name\":\"commit-docker-nginx-443-tcp\",\"protocol\":\"tcp\"}],\"systemControls\":[],\"ulimits\":[],\"volumesFrom\":[]},{\"cpu\":0,\"environment\":[],\"environmentFiles\":[],\"essential\":true,\"image\":\"urizaf/commit-docker-python-server:latest\",\"links\":[],\"mountPoints\":[],\"name\":\"python-server\",\"portMappings\":[{\"appProtocol\":\"http\",\"containerPort\":8000,\"hostPort\":0,\"name\":\"commit-docker-python-server-8000-tcp\",\"protocol\":\"tcp\"},{\"appProtocol\":\"http\",\"containerPort\":3306,\"hostPort\":0,\"name\":\"commit-docker-python-server-3306-tcp\",\"protocol\":\"tcp\"}],\"systemControls\":[],\"volumesFrom\":[]}]"
  cpu                      = "256"
  execution_role_arn       = "arn:aws:iam::463865334882:role/ecsTaskExecutionRole"
  family                   = "commit-flask-nginx-gunicorn"
  memory                   = "512"
  network_mode             = "bridge"
  requires_compatibilities = ["EC2"]

  runtime_platform {
    cpu_architecture        = "X86_64"
    operating_system_family = "LINUX"
  }

  track_latest = "false"
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-commit-flask-nginx-gunicorn-v2" {
  container_definitions = "[{\"cpu\":0,\"dependsOn\":[{\"condition\":\"START\",\"containerName\":\"python-server\"}],\"environment\":[],\"environmentFiles\":[],\"essential\":true,\"image\":\"463865334882.dkr.ecr.eu-central-1.amazonaws.com/commit_fargate_nginx:latest\",\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-create-group\":\"true\",\"awslogs-group\":\"/ecs/commit-flask-nginx-gunicorn-v2\",\"awslogs-region\":\"eu-central-1\",\"awslogs-stream-prefix\":\"ecs\"},\"secretOptions\":[]},\"mountPoints\":[],\"name\":\"nginx\",\"portMappings\":[{\"containerPort\":80,\"hostPort\":80,\"name\":\"nginx-80-tcp\",\"protocol\":\"tcp\"},{\"containerPort\":443,\"hostPort\":443,\"name\":\"nginx-443-tcp\",\"protocol\":\"tcp\"}],\"systemControls\":[],\"volumesFrom\":[]},{\"cpu\":0,\"environment\":[],\"environmentFiles\":[],\"essential\":true,\"image\":\"463865334882.dkr.ecr.eu-central-1.amazonaws.com/commit_fargate_python:latest\",\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-create-group\":\"true\",\"awslogs-group\":\"/ecs/commit-flask-nginx-gunicorn-v2\",\"awslogs-region\":\"eu-central-1\",\"awslogs-stream-prefix\":\"ecs\"},\"secretOptions\":[]},\"mountPoints\":[],\"name\":\"python-server\",\"portMappings\":[{\"appProtocol\":\"http\",\"containerPort\":8000,\"hostPort\":8000,\"name\":\"python-server-8000-tcp\",\"protocol\":\"tcp\"},{\"appProtocol\":\"http\",\"containerPort\":3306,\"hostPort\":3306,\"name\":\"python-server-3306-tcp\",\"protocol\":\"tcp\"}],\"systemControls\":[],\"ulimits\":[],\"volumesFrom\":[]}]"
  cpu                   = "256"

  ephemeral_storage {
    size_in_gib = "21"
  }

  execution_role_arn       = "arn:aws:iam::463865334882:role/ecsTaskExecutionRole"
  family                   = "commit-flask-nginx-gunicorn-v2"
  memory                   = "512"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]

  runtime_platform {
    cpu_architecture        = "X86_64"
    operating_system_family = "LINUX"
  }

  track_latest = "false"
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-commit-openresty" {
  container_definitions    = "[{\"cpu\":0,\"environment\":[],\"environmentFiles\":[],\"essential\":true,\"image\":\"463865334882.dkr.ecr.eu-central-1.amazonaws.com/commit-fargate-openresty\",\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-create-group\":\"true\",\"awslogs-group\":\"/ecs/commit-openresty\",\"awslogs-region\":\"eu-central-1\",\"awslogs-stream-prefix\":\"ecs\"},\"secretOptions\":[]},\"mountPoints\":[],\"name\":\"openresty\",\"portMappings\":[{\"appProtocol\":\"http\",\"containerPort\":443,\"hostPort\":443,\"name\":\"openresty-443-tcp\",\"protocol\":\"tcp\"},{\"appProtocol\":\"http\",\"containerPort\":80,\"hostPort\":80,\"name\":\"openresty-80-tcp\",\"protocol\":\"tcp\"}],\"systemControls\":[],\"ulimits\":[],\"volumesFrom\":[]}]"
  cpu                      = "256"
  execution_role_arn       = "arn:aws:iam::463865334882:role/ecsTaskExecutionRole"
  family                   = "commit-openresty"
  memory                   = "512"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]

  runtime_platform {
    cpu_architecture        = "X86_64"
    operating_system_family = "LINUX"
  }

  track_latest = "false"
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-nginx-commit" {
  container_definitions    = "[{\"cpu\":0,\"environment\":[],\"environmentFiles\":[],\"essential\":true,\"image\":\"urizaf/nginx-commit:v1.1\",\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-create-group\":\"true\",\"awslogs-group\":\"/ecs/nginx-commit\",\"awslogs-region\":\"eu-central-1\",\"awslogs-stream-prefix\":\"ecs\"},\"secretOptions\":[]},\"mountPoints\":[],\"name\":\"nginx-commit\",\"portMappings\":[{\"appProtocol\":\"http\",\"containerPort\":80,\"hostPort\":80,\"name\":\"nginx-80-tcp\",\"protocol\":\"tcp\"},{\"appProtocol\":\"http\",\"containerPort\":443,\"hostPort\":443,\"name\":\"nginx-443-tcp\",\"protocol\":\"tcp\"}],\"systemControls\":[],\"ulimits\":[],\"volumesFrom\":[]}]"
  cpu                      = "256"
  execution_role_arn       = "arn:aws:iam::463865334882:role/ecsTaskExecutionRole"
  family                   = "nginx-commit"
  memory                   = "512"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]

  runtime_platform {
    cpu_architecture        = "X86_64"
    operating_system_family = "LINUX"
  }

  track_latest = "false"
}

resource "aws_eip" "tfer--eipalloc-075d79594f64dc759" {
  domain               = "vpc"
  network_border_group = "eu-central-1"
  public_ipv4_pool     = "amazon"
  vpc                  = "true"
}

resource "aws_iam_access_key" "tfer--AKIAWYAEHJRRIC752H7O" {
  depends_on = ["aws_iam_user.tfer--AIDAWYAEHJRRMWEPDPHT7"]
  status     = "Active"
  user       = "ECR-user"
}

resource "aws_iam_access_key" "tfer--AKIAWYAEHJRRJCZALAHC" {
  depends_on = ["aws_iam_user.tfer--AIDAWYAEHJRRDTY2OC4NO"]
  status     = "Active"
  user       = "uri"
}

resource "aws_iam_access_key" "tfer--AKIAWYAEHJRRLJXBZNRY" {
  depends_on = ["aws_iam_user.tfer--AIDAWYAEHJRRAV57SVWYI"]
  status     = "Active"
  user       = "read-only"
}

resource "aws_iam_access_key" "tfer--AKIAWYAEHJRROTGQQTCR" {
  depends_on = ["aws_iam_user.tfer--AIDAWYAEHJRRDTY2OC4NO"]
  status     = "Active"
  user       = "uri"
}

resource "aws_iam_group" "tfer--Administrators" {
  name = "Administrators"
  path = "/"
}

resource "aws_iam_group_policy_attachment" "tfer--Administrators_AWSBillingReadOnlyAccess" {
  group      = "Administrators"
  policy_arn = "arn:aws:iam::aws:policy/AWSBillingReadOnlyAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--Administrators_AdministratorAccess" {
  group      = "Administrators"
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

resource "aws_iam_instance_profile" "tfer--AmazonEKSNodeRole" {
  name = "AmazonEKSNodeRole"
  path = "/"
  role = "AmazonEKSNodeRole"
}

resource "aws_iam_policy" "tfer--AWSCodePipelineServiceRole-eu-central-1-commit-CD" {
  description = "Policy used in trust relationship with CodePipeline"
  name        = "AWSCodePipelineServiceRole-eu-central-1-commit-CD"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "iam:PassRole"
      ],
      "Condition": {
        "StringEqualsIfExists": {
          "iam:PassedToService": [
            "cloudformation.amazonaws.com",
            "elasticbeanstalk.amazonaws.com",
            "ec2.amazonaws.com",
            "ecs-tasks.amazonaws.com"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codecommit:CancelUploadArchive",
        "codecommit:GetBranch",
        "codecommit:GetCommit",
        "codecommit:GetRepository",
        "codecommit:GetUploadArchiveStatus",
        "codecommit:UploadArchive"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codedeploy:CreateDeployment",
        "codedeploy:GetApplication",
        "codedeploy:GetApplicationRevision",
        "codedeploy:GetDeployment",
        "codedeploy:GetDeploymentConfig",
        "codedeploy:RegisterApplicationRevision"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codestar-connections:UseConnection"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "elasticbeanstalk:*",
        "ec2:*",
        "elasticloadbalancing:*",
        "autoscaling:*",
        "cloudwatch:*",
        "s3:*",
        "sns:*",
        "cloudformation:*",
        "rds:*",
        "sqs:*",
        "ecs:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "lambda:InvokeFunction",
        "lambda:ListFunctions"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "opsworks:CreateDeployment",
        "opsworks:DescribeApps",
        "opsworks:DescribeCommands",
        "opsworks:DescribeDeployments",
        "opsworks:DescribeInstances",
        "opsworks:DescribeStacks",
        "opsworks:UpdateApp",
        "opsworks:UpdateStack"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:CreateStack",
        "cloudformation:DeleteStack",
        "cloudformation:DescribeStacks",
        "cloudformation:UpdateStack",
        "cloudformation:CreateChangeSet",
        "cloudformation:DeleteChangeSet",
        "cloudformation:DescribeChangeSet",
        "cloudformation:ExecuteChangeSet",
        "cloudformation:SetStackPolicy",
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codebuild:BatchGetBuilds",
        "codebuild:StartBuild",
        "codebuild:BatchGetBuildBatches",
        "codebuild:StartBuildBatch"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "devicefarm:ListProjects",
        "devicefarm:ListDevicePools",
        "devicefarm:GetRun",
        "devicefarm:GetUpload",
        "devicefarm:CreateUpload",
        "devicefarm:ScheduleRun"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "servicecatalog:ListProvisioningArtifacts",
        "servicecatalog:CreateProvisioningArtifact",
        "servicecatalog:DescribeProvisioningArtifact",
        "servicecatalog:DeleteProvisioningArtifact",
        "servicecatalog:UpdateProduct"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "ecr:DescribeImages"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "states:DescribeExecution",
        "states:DescribeStateMachine",
        "states:StartExecution"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "appconfig:StartDeployment",
        "appconfig:StopDeployment",
        "appconfig:GetDeployment"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--AWSCodePipelineServiceRole-eu-central-1-commit-ECR-to-ECS" {
  description = "Policy used in trust relationship with CodePipeline"
  name        = "AWSCodePipelineServiceRole-eu-central-1-commit-ECR-to-ECS"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "iam:PassRole"
      ],
      "Condition": {
        "StringEqualsIfExists": {
          "iam:PassedToService": [
            "cloudformation.amazonaws.com",
            "elasticbeanstalk.amazonaws.com",
            "ec2.amazonaws.com",
            "ecs-tasks.amazonaws.com"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codecommit:CancelUploadArchive",
        "codecommit:GetBranch",
        "codecommit:GetCommit",
        "codecommit:GetRepository",
        "codecommit:GetUploadArchiveStatus",
        "codecommit:UploadArchive"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codedeploy:CreateDeployment",
        "codedeploy:GetApplication",
        "codedeploy:GetApplicationRevision",
        "codedeploy:GetDeployment",
        "codedeploy:GetDeploymentConfig",
        "codedeploy:RegisterApplicationRevision"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codestar-connections:UseConnection"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "elasticbeanstalk:*",
        "ec2:*",
        "elasticloadbalancing:*",
        "autoscaling:*",
        "cloudwatch:*",
        "s3:*",
        "sns:*",
        "cloudformation:*",
        "rds:*",
        "sqs:*",
        "ecs:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "lambda:InvokeFunction",
        "lambda:ListFunctions"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "opsworks:CreateDeployment",
        "opsworks:DescribeApps",
        "opsworks:DescribeCommands",
        "opsworks:DescribeDeployments",
        "opsworks:DescribeInstances",
        "opsworks:DescribeStacks",
        "opsworks:UpdateApp",
        "opsworks:UpdateStack"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:CreateStack",
        "cloudformation:DeleteStack",
        "cloudformation:DescribeStacks",
        "cloudformation:UpdateStack",
        "cloudformation:CreateChangeSet",
        "cloudformation:DeleteChangeSet",
        "cloudformation:DescribeChangeSet",
        "cloudformation:ExecuteChangeSet",
        "cloudformation:SetStackPolicy",
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codebuild:BatchGetBuilds",
        "codebuild:StartBuild",
        "codebuild:BatchGetBuildBatches",
        "codebuild:StartBuildBatch"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "devicefarm:ListProjects",
        "devicefarm:ListDevicePools",
        "devicefarm:GetRun",
        "devicefarm:GetUpload",
        "devicefarm:CreateUpload",
        "devicefarm:ScheduleRun"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "servicecatalog:ListProvisioningArtifacts",
        "servicecatalog:CreateProvisioningArtifact",
        "servicecatalog:DescribeProvisioningArtifact",
        "servicecatalog:DeleteProvisioningArtifact",
        "servicecatalog:UpdateProduct"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "ecr:DescribeImages"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "states:DescribeExecution",
        "states:DescribeStateMachine",
        "states:StartExecution"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "appconfig:StartDeployment",
        "appconfig:StopDeployment",
        "appconfig:GetDeployment"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--AWSCodePipelineServiceRole-eu-central-1-nginx-ECR-to-ECS" {
  description = "Policy used in trust relationship with CodePipeline"
  name        = "AWSCodePipelineServiceRole-eu-central-1-nginx-ECR-to-ECS"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "iam:PassRole"
      ],
      "Condition": {
        "StringEqualsIfExists": {
          "iam:PassedToService": [
            "cloudformation.amazonaws.com",
            "elasticbeanstalk.amazonaws.com",
            "ec2.amazonaws.com",
            "ecs-tasks.amazonaws.com"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codecommit:CancelUploadArchive",
        "codecommit:GetBranch",
        "codecommit:GetCommit",
        "codecommit:GetRepository",
        "codecommit:GetUploadArchiveStatus",
        "codecommit:UploadArchive"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codedeploy:CreateDeployment",
        "codedeploy:GetApplication",
        "codedeploy:GetApplicationRevision",
        "codedeploy:GetDeployment",
        "codedeploy:GetDeploymentConfig",
        "codedeploy:RegisterApplicationRevision"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codestar-connections:UseConnection"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "elasticbeanstalk:*",
        "ec2:*",
        "elasticloadbalancing:*",
        "autoscaling:*",
        "cloudwatch:*",
        "s3:*",
        "sns:*",
        "cloudformation:*",
        "rds:*",
        "sqs:*",
        "ecs:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "lambda:InvokeFunction",
        "lambda:ListFunctions"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "opsworks:CreateDeployment",
        "opsworks:DescribeApps",
        "opsworks:DescribeCommands",
        "opsworks:DescribeDeployments",
        "opsworks:DescribeInstances",
        "opsworks:DescribeStacks",
        "opsworks:UpdateApp",
        "opsworks:UpdateStack"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:CreateStack",
        "cloudformation:DeleteStack",
        "cloudformation:DescribeStacks",
        "cloudformation:UpdateStack",
        "cloudformation:CreateChangeSet",
        "cloudformation:DeleteChangeSet",
        "cloudformation:DescribeChangeSet",
        "cloudformation:ExecuteChangeSet",
        "cloudformation:SetStackPolicy",
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codebuild:BatchGetBuilds",
        "codebuild:StartBuild",
        "codebuild:BatchGetBuildBatches",
        "codebuild:StartBuildBatch"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "devicefarm:ListProjects",
        "devicefarm:ListDevicePools",
        "devicefarm:GetRun",
        "devicefarm:GetUpload",
        "devicefarm:CreateUpload",
        "devicefarm:ScheduleRun"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "servicecatalog:ListProvisioningArtifacts",
        "servicecatalog:CreateProvisioningArtifact",
        "servicecatalog:DescribeProvisioningArtifact",
        "servicecatalog:DeleteProvisioningArtifact",
        "servicecatalog:UpdateProduct"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "ecr:DescribeImages"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "states:DescribeExecution",
        "states:DescribeStateMachine",
        "states:StartExecution"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "appconfig:StartDeployment",
        "appconfig:StopDeployment",
        "appconfig:GetDeployment"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--AWSCodePipelineServiceRole-eu-central-1-openresty-ECR-to-ECS" {
  description = "Policy used in trust relationship with CodePipeline"
  name        = "AWSCodePipelineServiceRole-eu-central-1-openresty-ECR-to-ECS"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "iam:PassRole"
      ],
      "Condition": {
        "StringEqualsIfExists": {
          "iam:PassedToService": [
            "cloudformation.amazonaws.com",
            "elasticbeanstalk.amazonaws.com",
            "ec2.amazonaws.com",
            "ecs-tasks.amazonaws.com"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codecommit:CancelUploadArchive",
        "codecommit:GetBranch",
        "codecommit:GetCommit",
        "codecommit:GetRepository",
        "codecommit:GetUploadArchiveStatus",
        "codecommit:UploadArchive"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codedeploy:CreateDeployment",
        "codedeploy:GetApplication",
        "codedeploy:GetApplicationRevision",
        "codedeploy:GetDeployment",
        "codedeploy:GetDeploymentConfig",
        "codedeploy:RegisterApplicationRevision"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codestar-connections:UseConnection"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "elasticbeanstalk:*",
        "ec2:*",
        "elasticloadbalancing:*",
        "autoscaling:*",
        "cloudwatch:*",
        "s3:*",
        "sns:*",
        "cloudformation:*",
        "rds:*",
        "sqs:*",
        "ecs:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "lambda:InvokeFunction",
        "lambda:ListFunctions"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "opsworks:CreateDeployment",
        "opsworks:DescribeApps",
        "opsworks:DescribeCommands",
        "opsworks:DescribeDeployments",
        "opsworks:DescribeInstances",
        "opsworks:DescribeStacks",
        "opsworks:UpdateApp",
        "opsworks:UpdateStack"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:CreateStack",
        "cloudformation:DeleteStack",
        "cloudformation:DescribeStacks",
        "cloudformation:UpdateStack",
        "cloudformation:CreateChangeSet",
        "cloudformation:DeleteChangeSet",
        "cloudformation:DescribeChangeSet",
        "cloudformation:ExecuteChangeSet",
        "cloudformation:SetStackPolicy",
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codebuild:BatchGetBuilds",
        "codebuild:StartBuild",
        "codebuild:BatchGetBuildBatches",
        "codebuild:StartBuildBatch"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "devicefarm:ListProjects",
        "devicefarm:ListDevicePools",
        "devicefarm:GetRun",
        "devicefarm:GetUpload",
        "devicefarm:CreateUpload",
        "devicefarm:ScheduleRun"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "servicecatalog:ListProvisioningArtifacts",
        "servicecatalog:CreateProvisioningArtifact",
        "servicecatalog:DescribeProvisioningArtifact",
        "servicecatalog:DeleteProvisioningArtifact",
        "servicecatalog:UpdateProduct"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "ecr:DescribeImages"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "states:DescribeExecution",
        "states:DescribeStateMachine",
        "states:StartExecution"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "appconfig:StartDeployment",
        "appconfig:StopDeployment",
        "appconfig:GetDeployment"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--AWSCodePipelineServiceRole-eu-central-1-openresty-ecr-to-eks" {
  description = "Policy used in trust relationship with CodePipeline"
  name        = "AWSCodePipelineServiceRole-eu-central-1-openresty-ecr-to-eks"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "iam:PassRole"
      ],
      "Condition": {
        "StringEqualsIfExists": {
          "iam:PassedToService": [
            "cloudformation.amazonaws.com",
            "elasticbeanstalk.amazonaws.com",
            "ec2.amazonaws.com",
            "ecs-tasks.amazonaws.com"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codecommit:CancelUploadArchive",
        "codecommit:GetBranch",
        "codecommit:GetCommit",
        "codecommit:GetRepository",
        "codecommit:GetUploadArchiveStatus",
        "codecommit:UploadArchive"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codedeploy:CreateDeployment",
        "codedeploy:GetApplication",
        "codedeploy:GetApplicationRevision",
        "codedeploy:GetDeployment",
        "codedeploy:GetDeploymentConfig",
        "codedeploy:RegisterApplicationRevision"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codestar-connections:UseConnection"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "elasticbeanstalk:*",
        "ec2:*",
        "elasticloadbalancing:*",
        "autoscaling:*",
        "cloudwatch:*",
        "s3:*",
        "sns:*",
        "cloudformation:*",
        "rds:*",
        "sqs:*",
        "ecs:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "lambda:InvokeFunction",
        "lambda:ListFunctions"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "opsworks:CreateDeployment",
        "opsworks:DescribeApps",
        "opsworks:DescribeCommands",
        "opsworks:DescribeDeployments",
        "opsworks:DescribeInstances",
        "opsworks:DescribeStacks",
        "opsworks:UpdateApp",
        "opsworks:UpdateStack"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:CreateStack",
        "cloudformation:DeleteStack",
        "cloudformation:DescribeStacks",
        "cloudformation:UpdateStack",
        "cloudformation:CreateChangeSet",
        "cloudformation:DeleteChangeSet",
        "cloudformation:DescribeChangeSet",
        "cloudformation:ExecuteChangeSet",
        "cloudformation:SetStackPolicy",
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codebuild:BatchGetBuilds",
        "codebuild:StartBuild",
        "codebuild:BatchGetBuildBatches",
        "codebuild:StartBuildBatch"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "devicefarm:ListProjects",
        "devicefarm:ListDevicePools",
        "devicefarm:GetRun",
        "devicefarm:GetUpload",
        "devicefarm:CreateUpload",
        "devicefarm:ScheduleRun"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "servicecatalog:ListProvisioningArtifacts",
        "servicecatalog:CreateProvisioningArtifact",
        "servicecatalog:DescribeProvisioningArtifact",
        "servicecatalog:DeleteProvisioningArtifact",
        "servicecatalog:UpdateProduct"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "ecr:DescribeImages"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "states:DescribeExecution",
        "states:DescribeStateMachine",
        "states:StartExecution"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "appconfig:StartDeployment",
        "appconfig:StopDeployment",
        "appconfig:GetDeployment"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--AWSCodePipelineServiceRole-eu-central-1-python-ECR-to-ECS" {
  description = "Policy used in trust relationship with CodePipeline"
  name        = "AWSCodePipelineServiceRole-eu-central-1-python-ECR-to-ECS"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "iam:PassRole"
      ],
      "Condition": {
        "StringEqualsIfExists": {
          "iam:PassedToService": [
            "cloudformation.amazonaws.com",
            "elasticbeanstalk.amazonaws.com",
            "ec2.amazonaws.com",
            "ecs-tasks.amazonaws.com"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codecommit:CancelUploadArchive",
        "codecommit:GetBranch",
        "codecommit:GetCommit",
        "codecommit:GetRepository",
        "codecommit:GetUploadArchiveStatus",
        "codecommit:UploadArchive"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codedeploy:CreateDeployment",
        "codedeploy:GetApplication",
        "codedeploy:GetApplicationRevision",
        "codedeploy:GetDeployment",
        "codedeploy:GetDeploymentConfig",
        "codedeploy:RegisterApplicationRevision"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codestar-connections:UseConnection"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "elasticbeanstalk:*",
        "ec2:*",
        "elasticloadbalancing:*",
        "autoscaling:*",
        "cloudwatch:*",
        "s3:*",
        "sns:*",
        "cloudformation:*",
        "rds:*",
        "sqs:*",
        "ecs:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "lambda:InvokeFunction",
        "lambda:ListFunctions"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "opsworks:CreateDeployment",
        "opsworks:DescribeApps",
        "opsworks:DescribeCommands",
        "opsworks:DescribeDeployments",
        "opsworks:DescribeInstances",
        "opsworks:DescribeStacks",
        "opsworks:UpdateApp",
        "opsworks:UpdateStack"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:CreateStack",
        "cloudformation:DeleteStack",
        "cloudformation:DescribeStacks",
        "cloudformation:UpdateStack",
        "cloudformation:CreateChangeSet",
        "cloudformation:DeleteChangeSet",
        "cloudformation:DescribeChangeSet",
        "cloudformation:ExecuteChangeSet",
        "cloudformation:SetStackPolicy",
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codebuild:BatchGetBuilds",
        "codebuild:StartBuild",
        "codebuild:BatchGetBuildBatches",
        "codebuild:StartBuildBatch"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "devicefarm:ListProjects",
        "devicefarm:ListDevicePools",
        "devicefarm:GetRun",
        "devicefarm:GetUpload",
        "devicefarm:CreateUpload",
        "devicefarm:ScheduleRun"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "servicecatalog:ListProvisioningArtifacts",
        "servicecatalog:CreateProvisioningArtifact",
        "servicecatalog:DescribeProvisioningArtifact",
        "servicecatalog:DeleteProvisioningArtifact",
        "servicecatalog:UpdateProduct"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "ecr:DescribeImages"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "states:DescribeExecution",
        "states:DescribeStateMachine",
        "states:StartExecution"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "appconfig:StartDeployment",
        "appconfig:StopDeployment",
        "appconfig:GetDeployment"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--CodeBuildBasePolicy-commit-ECR-to-EKS-eu-central-1" {
  description = "Policy used in trust relationship with CodeBuild"
  name        = "CodeBuildBasePolicy-commit-ECR-to-EKS-eu-central-1"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:eu-central-1:463865334882:log-group:/aws/codebuild/commit-ECR-to-EKS",
        "arn:aws:logs:eu-central-1:463865334882:log-group:/aws/codebuild/commit-ECR-to-EKS:*"
      ]
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:GetBucketAcl",
        "s3:GetBucketLocation"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::codepipeline-eu-central-1-*"
      ]
    },
    {
      "Action": [
        "codebuild:CreateReportGroup",
        "codebuild:CreateReport",
        "codebuild:UpdateReport",
        "codebuild:BatchPutTestCases",
        "codebuild:BatchPutCodeCoverages"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:codebuild:eu-central-1:463865334882:report-group/commit-ECR-to-EKS-*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--CodeBuildBasePolicy-commit-build-eu-central-1" {
  description = "Policy used in trust relationship with CodeBuild"
  name        = "CodeBuildBasePolicy-commit-build-eu-central-1"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:eu-central-1:463865334882:log-group:/aws/codebuild/commit-build",
        "arn:aws:logs:eu-central-1:463865334882:log-group:/aws/codebuild/commit-build:*"
      ]
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:GetBucketAcl",
        "s3:GetBucketLocation"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::codepipeline-eu-central-1-*"
      ]
    },
    {
      "Action": [
        "codebuild:CreateReportGroup",
        "codebuild:CreateReport",
        "codebuild:UpdateReport",
        "codebuild:BatchPutTestCases",
        "codebuild:BatchPutCodeCoverages"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:codebuild:eu-central-1:463865334882:report-group/commit-build-*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--CodeBuildBasePolicy-commit-nginx-buil-eu-central-1" {
  description = "Policy used in trust relationship with CodeBuild"
  name        = "CodeBuildBasePolicy-commit-nginx-buil-eu-central-1"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:eu-central-1:463865334882:log-group:/aws/codebuild/commit-nginx-buil",
        "arn:aws:logs:eu-central-1:463865334882:log-group:/aws/codebuild/commit-nginx-buil:*"
      ]
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:GetBucketAcl",
        "s3:GetBucketLocation"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::codepipeline-eu-central-1-*"
      ]
    },
    {
      "Action": [
        "codebuild:CreateReportGroup",
        "codebuild:CreateReport",
        "codebuild:UpdateReport",
        "codebuild:BatchPutTestCases",
        "codebuild:BatchPutCodeCoverages"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:codebuild:eu-central-1:463865334882:report-group/commit-nginx-buil-*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--CodeBuildBasePolicy-commit-nginx-build-eu-central-1" {
  description = "Policy used in trust relationship with CodeBuild"
  name        = "CodeBuildBasePolicy-commit-nginx-build-eu-central-1"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:eu-central-1:463865334882:log-group:/aws/codebuild/commit-nginx-build",
        "arn:aws:logs:eu-central-1:463865334882:log-group:/aws/codebuild/commit-nginx-build:*"
      ]
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:GetBucketAcl",
        "s3:GetBucketLocation"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::codepipeline-eu-central-1-*"
      ]
    },
    {
      "Action": [
        "codebuild:CreateReportGroup",
        "codebuild:CreateReport",
        "codebuild:UpdateReport",
        "codebuild:BatchPutTestCases",
        "codebuild:BatchPutCodeCoverages"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:codebuild:eu-central-1:463865334882:report-group/commit-nginx-build-*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--CodeBuildBasePolicy-commit-openresty-build-eu-central-1" {
  description = "Policy used in trust relationship with CodeBuild"
  name        = "CodeBuildBasePolicy-commit-openresty-build-eu-central-1"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:eu-central-1:463865334882:log-group:/aws/codebuild/commit-openresty-build",
        "arn:aws:logs:eu-central-1:463865334882:log-group:/aws/codebuild/commit-openresty-build:*"
      ]
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:GetBucketAcl",
        "s3:GetBucketLocation"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::codepipeline-eu-central-1-*"
      ]
    },
    {
      "Action": [
        "codebuild:CreateReportGroup",
        "codebuild:CreateReport",
        "codebuild:UpdateReport",
        "codebuild:BatchPutTestCases",
        "codebuild:BatchPutCodeCoverages"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:codebuild:eu-central-1:463865334882:report-group/commit-openresty-build-*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--CodeBuildBasePolicy-commit-python-build-eu-central-1" {
  description = "Policy used in trust relationship with CodeBuild"
  name        = "CodeBuildBasePolicy-commit-python-build-eu-central-1"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:eu-central-1:463865334882:log-group:/aws/codebuild/commit-python-build",
        "arn:aws:logs:eu-central-1:463865334882:log-group:/aws/codebuild/commit-python-build:*"
      ]
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:GetBucketAcl",
        "s3:GetBucketLocation"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::codepipeline-eu-central-1-*"
      ]
    },
    {
      "Action": [
        "codebuild:CreateReportGroup",
        "codebuild:CreateReport",
        "codebuild:UpdateReport",
        "codebuild:BatchPutTestCases",
        "codebuild:BatchPutCodeCoverages"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:codebuild:eu-central-1:463865334882:report-group/commit-python-build-*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--start-pipeline-execution-eu-central-1-commit-ECR-to-ECS" {
  description = "Allows Amazon CloudWatch Events to automatically start a new execution in the commit-ECR-to-ECS pipeline when a change occurs"
  name        = "start-pipeline-execution-eu-central-1-commit-ECR-to-ECS"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "codepipeline:StartPipelineExecution"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:codepipeline:eu-central-1:463865334882:commit-ECR-to-ECS"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--start-pipeline-execution-eu-central-1-nginx-ECR-to-ECS" {
  description = "Allows Amazon CloudWatch Events to automatically start a new execution in the nginx-ECR-to-ECS pipeline when a change occurs"
  name        = "start-pipeline-execution-eu-central-1-nginx-ECR-to-ECS"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "codepipeline:StartPipelineExecution"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:codepipeline:eu-central-1:463865334882:nginx-ECR-to-ECS"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--start-pipeline-execution-eu-central-1-openresty-ECR-to-ECS" {
  description = "Allows Amazon CloudWatch Events to automatically start a new execution in the openresty-ECR-to-ECS pipeline when a change occurs"
  name        = "start-pipeline-execution-eu-central-1-openresty-ECR-to-ECS"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "codepipeline:StartPipelineExecution"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:codepipeline:eu-central-1:463865334882:openresty-ECR-to-ECS"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--start-pipeline-execution-eu-central-1-openresty-ecr-to-eks" {
  description = "Allows Amazon CloudWatch Events to automatically start a new execution in the openresty-ecr-to-eks pipeline when a change occurs"
  name        = "start-pipeline-execution-eu-central-1-openresty-ecr-to-eks"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "codepipeline:StartPipelineExecution"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:codepipeline:eu-central-1:463865334882:openresty-ecr-to-eks"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--start-pipeline-execution-eu-central-1-python-ECR-to-ECS" {
  description = "Allows Amazon CloudWatch Events to automatically start a new execution in the python-ECR-to-ECS pipeline when a change occurs"
  name        = "start-pipeline-execution-eu-central-1-python-ECR-to-ECS"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "codepipeline:StartPipelineExecution"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:codepipeline:eu-central-1:463865334882:python-ECR-to-ECS"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_role" "tfer--AWSCodePipelineServiceRole-eu-central-1-commit-CD" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::463865334882:policy/service-role/AWSCodePipelineServiceRole-eu-central-1-commit-CD"]
  max_session_duration = "3600"
  name                 = "AWSCodePipelineServiceRole-eu-central-1-commit-CD"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--AWSCodePipelineServiceRole-eu-central-1-commit-ECR-to-ECS" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::463865334882:policy/service-role/AWSCodePipelineServiceRole-eu-central-1-commit-ECR-to-ECS"]
  max_session_duration = "3600"
  name                 = "AWSCodePipelineServiceRole-eu-central-1-commit-ECR-to-ECS"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--AWSCodePipelineServiceRole-eu-central-1-nginx-ECR-to-ECS" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::463865334882:policy/service-role/AWSCodePipelineServiceRole-eu-central-1-nginx-ECR-to-ECS"]
  max_session_duration = "3600"
  name                 = "AWSCodePipelineServiceRole-eu-central-1-nginx-ECR-to-ECS"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--AWSCodePipelineServiceRole-eu-central-1-openresty-ECR-to-ECS" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::463865334882:policy/service-role/AWSCodePipelineServiceRole-eu-central-1-openresty-ECR-to-ECS"]
  max_session_duration = "3600"
  name                 = "AWSCodePipelineServiceRole-eu-central-1-openresty-ECR-to-ECS"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--AWSCodePipelineServiceRole-eu-central-1-openresty-ecr-to-eks" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::463865334882:policy/service-role/AWSCodePipelineServiceRole-eu-central-1-openresty-ecr-to-eks", "arn:aws:iam::aws:policy/SecretsManagerReadWrite"]
  max_session_duration = "3600"
  name                 = "AWSCodePipelineServiceRole-eu-central-1-openresty-ecr-to-eks"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--AWSCodePipelineServiceRole-eu-central-1-python-ECR-to-ECS" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::463865334882:policy/service-role/AWSCodePipelineServiceRole-eu-central-1-python-ECR-to-ECS"]
  max_session_duration = "3600"
  name                 = "AWSCodePipelineServiceRole-eu-central-1-python-ECR-to-ECS"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForAmazonEKS" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "eks.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Amazon EKS to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonEKSServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAmazonEKS"
  path                 = "/aws-service-role/eks.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForAmazonEKSForFargate" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "eks-fargate.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "This policy grants necessary permissions to Amazon EKS to run fargate tasks"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonEKSForFargateServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAmazonEKSForFargate"
  path                 = "/aws-service-role/eks-fargate.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForAmazonEKSNodegroup" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "eks-nodegroup.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "This policy allows Amazon EKS to create and manage Nodegroups"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSServiceRoleForAmazonEKSNodegroup"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAmazonEKSNodegroup"
  path                 = "/aws-service-role/eks-nodegroup.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForAmazonSSM" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ssm.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Provides access to AWS Resources managed or used by Amazon SSM."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonSSMServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAmazonSSM"
  path                 = "/aws-service-role/ssm.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForAutoScaling" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "autoscaling.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Default Service-Linked Role enables access to AWS Services and Resources used or managed by Auto Scaling"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AutoScalingServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAutoScaling"
  path                 = "/aws-service-role/autoscaling.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForEC2Spot" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "spot.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Default EC2 Spot Service Linked Role"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSEC2SpotServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForEC2Spot"
  path                 = "/aws-service-role/spot.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForECS" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ecs.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Role to enable Amazon ECS to manage your cluster."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonECSServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForECS"
  path                 = "/aws-service-role/ecs.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForElasticLoadBalancing" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "elasticloadbalancing.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows ELB to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSElasticLoadBalancingServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForElasticLoadBalancing"
  path                 = "/aws-service-role/elasticloadbalancing.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForLexV2Bots_43MMA1D3U3" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lexv2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonLexV2BotPolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForLexV2Bots_43MMA1D3U3"
  path                 = "/aws-service-role/lexv2.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForOrganizations" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "organizations.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Service-linked role used by AWS Organizations to enable integration of other AWS services with Organizations."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSOrganizationsServiceTrustPolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForOrganizations"
  path                 = "/aws-service-role/organizations.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForRDS" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "rds.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Amazon RDS to manage AWS resources on your behalf"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonRDSServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForRDS"
  path                 = "/aws-service-role/rds.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForResourceExplorer" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "resource-explorer-2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSResourceExplorerServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForResourceExplorer"
  path                 = "/aws-service-role/resource-explorer-2.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForSupport" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "support.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Enables resource access for AWS to provide billing, administrative and support services"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSSupportServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForSupport"
  path                 = "/aws-service-role/support.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForTrustedAdvisor" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "trustedadvisor.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Access for the AWS Trusted Advisor Service to help reduce cost, increase performance, and improve security of your AWS environment."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSTrustedAdvisorServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForTrustedAdvisor"
  path                 = "/aws-service-role/trustedadvisor.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AmazonEKSFargatePodExecutionRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Condition": {
        "ArnLike": {
          "aws:SourceArn": "arn:aws:eks:*:463865334882:fargateprofile/*/*"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "eks-fargate-pods.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows access to other AWS service resources that are required to run Amazon EKS pods on AWS Fargate."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonEKSFargatePodExecutionRolePolicy"]
  max_session_duration = "3600"
  name                 = "AmazonEKSFargatePodExecutionRole"
  path                 = "/"
}

resource "aws_iam_role" "tfer--AmazonEKSNodeRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Amazon EKS - Node role"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly", "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy", "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"]
  max_session_duration = "3600"
  name                 = "AmazonEKSNodeRole"
  path                 = "/"
}

resource "aws_iam_role" "tfer--codebuild-commit-ECR-to-EKS-service-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::463865334882:policy/service-role/CodeBuildBasePolicy-commit-ECR-to-EKS-eu-central-1", "arn:aws:iam::aws:policy/SecretsManagerReadWrite"]
  max_session_duration = "3600"
  name                 = "codebuild-commit-ECR-to-EKS-service-role"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--codebuild-commit-build-service-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::463865334882:policy/service-role/CodeBuildBasePolicy-commit-build-eu-central-1"]
  max_session_duration = "3600"
  name                 = "codebuild-commit-build-service-role"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--codebuild-commit-nginx-buil-service-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::463865334882:policy/service-role/CodeBuildBasePolicy-commit-nginx-buil-eu-central-1"]
  max_session_duration = "3600"
  name                 = "codebuild-commit-nginx-buil-service-role"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--codebuild-commit-nginx-build-service-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::463865334882:policy/service-role/CodeBuildBasePolicy-commit-nginx-build-eu-central-1"]
  max_session_duration = "3600"
  name                 = "codebuild-commit-nginx-build-service-role"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--codebuild-commit-openresty-build-service-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::463865334882:policy/service-role/CodeBuildBasePolicy-commit-openresty-build-eu-central-1"]
  max_session_duration = "3600"
  name                 = "codebuild-commit-openresty-build-service-role"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--codebuild-commit-python-build-service-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::463865334882:policy/service-role/CodeBuildBasePolicy-commit-python-build-eu-central-1"]
  max_session_duration = "3600"
  name                 = "codebuild-commit-python-build-service-role"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--cwe-role-eu-central-1-commit-ECR-to-ECS" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "events.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::463865334882:policy/service-role/start-pipeline-execution-eu-central-1-commit-ECR-to-ECS"]
  max_session_duration = "3600"
  name                 = "cwe-role-eu-central-1-commit-ECR-to-ECS"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--cwe-role-eu-central-1-nginx-ECR-to-ECS" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "events.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::463865334882:policy/service-role/start-pipeline-execution-eu-central-1-nginx-ECR-to-ECS"]
  max_session_duration = "3600"
  name                 = "cwe-role-eu-central-1-nginx-ECR-to-ECS"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--cwe-role-eu-central-1-openresty-ECR-to-ECS" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "events.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::463865334882:policy/service-role/start-pipeline-execution-eu-central-1-openresty-ECR-to-ECS"]
  max_session_duration = "3600"
  name                 = "cwe-role-eu-central-1-openresty-ECR-to-ECS"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--cwe-role-eu-central-1-openresty-ecr-to-eks" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "events.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::463865334882:policy/service-role/start-pipeline-execution-eu-central-1-openresty-ecr-to-eks"]
  max_session_duration = "3600"
  name                 = "cwe-role-eu-central-1-openresty-ecr-to-eks"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--cwe-role-eu-central-1-python-ECR-to-ECS" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "events.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::463865334882:policy/service-role/start-pipeline-execution-eu-central-1-python-ECR-to-ECS"]
  max_session_duration = "3600"
  name                 = "cwe-role-eu-central-1-python-ECR-to-ECS"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--ecsTaskExecutionRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ecs-tasks.amazonaws.com"
      },
      "Sid": ""
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"]
  max_session_duration = "3600"
  name                 = "ecsTaskExecutionRole"
  path                 = "/"
}

resource "aws_iam_role" "tfer--eksClusterRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "eks.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows access to other AWS service resources that are required to operate clusters managed by EKS."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"]
  max_session_duration = "3600"
  name                 = "eksClusterRole"
  path                 = "/"
}

resource "aws_iam_role" "tfer--rds-monitoring-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "monitoring.rds.amazonaws.com"
      },
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonRDSEnhancedMonitoringRole"]
  max_session_duration = "3600"
  name                 = "rds-monitoring-role"
  path                 = "/"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSCodePipelineServiceRole-eu-central-1-commit-CD_AWSCodePipelineServiceRole-eu-central-1-commit-CD" {
  policy_arn = "arn:aws:iam::463865334882:policy/service-role/AWSCodePipelineServiceRole-eu-central-1-commit-CD"
  role       = "AWSCodePipelineServiceRole-eu-central-1-commit-CD"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSCodePipelineServiceRole-eu-central-1-commit-ECR-to-ECS_AWSCodePipelineServiceRole-eu-central-1-commit-ECR-to-ECS" {
  policy_arn = "arn:aws:iam::463865334882:policy/service-role/AWSCodePipelineServiceRole-eu-central-1-commit-ECR-to-ECS"
  role       = "AWSCodePipelineServiceRole-eu-central-1-commit-ECR-to-ECS"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSCodePipelineServiceRole-eu-central-1-nginx-ECR-to-ECS_AWSCodePipelineServiceRole-eu-central-1-nginx-ECR-to-ECS" {
  policy_arn = "arn:aws:iam::463865334882:policy/service-role/AWSCodePipelineServiceRole-eu-central-1-nginx-ECR-to-ECS"
  role       = "AWSCodePipelineServiceRole-eu-central-1-nginx-ECR-to-ECS"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSCodePipelineServiceRole-eu-central-1-openresty-ECR-to-ECS_AWSCodePipelineServiceRole-eu-central-1-openresty-ECR-to-ECS" {
  policy_arn = "arn:aws:iam::463865334882:policy/service-role/AWSCodePipelineServiceRole-eu-central-1-openresty-ECR-to-ECS"
  role       = "AWSCodePipelineServiceRole-eu-central-1-openresty-ECR-to-ECS"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSCodePipelineServiceRole-eu-central-1-openresty-ecr-to-eks_AWSCodePipelineServiceRole-eu-central-1-openresty-ecr-to-eks" {
  policy_arn = "arn:aws:iam::463865334882:policy/service-role/AWSCodePipelineServiceRole-eu-central-1-openresty-ecr-to-eks"
  role       = "AWSCodePipelineServiceRole-eu-central-1-openresty-ecr-to-eks"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSCodePipelineServiceRole-eu-central-1-openresty-ecr-to-eks_SecretsManagerReadWrite" {
  policy_arn = "arn:aws:iam::aws:policy/SecretsManagerReadWrite"
  role       = "AWSCodePipelineServiceRole-eu-central-1-openresty-ecr-to-eks"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSCodePipelineServiceRole-eu-central-1-python-ECR-to-ECS_AWSCodePipelineServiceRole-eu-central-1-python-ECR-to-ECS" {
  policy_arn = "arn:aws:iam::463865334882:policy/service-role/AWSCodePipelineServiceRole-eu-central-1-python-ECR-to-ECS"
  role       = "AWSCodePipelineServiceRole-eu-central-1-python-ECR-to-ECS"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAmazonEKSForFargate_AmazonEKSForFargateServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonEKSForFargateServiceRolePolicy"
  role       = "AWSServiceRoleForAmazonEKSForFargate"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAmazonEKSNodegroup_AWSServiceRoleForAmazonEKSNodegroup" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSServiceRoleForAmazonEKSNodegroup"
  role       = "AWSServiceRoleForAmazonEKSNodegroup"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAmazonEKS_AmazonEKSServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonEKSServiceRolePolicy"
  role       = "AWSServiceRoleForAmazonEKS"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAmazonSSM_AmazonSSMServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonSSMServiceRolePolicy"
  role       = "AWSServiceRoleForAmazonSSM"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAutoScaling_AutoScalingServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AutoScalingServiceRolePolicy"
  role       = "AWSServiceRoleForAutoScaling"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForEC2Spot_AWSEC2SpotServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSEC2SpotServiceRolePolicy"
  role       = "AWSServiceRoleForEC2Spot"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForECS_AmazonECSServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonECSServiceRolePolicy"
  role       = "AWSServiceRoleForECS"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForElasticLoadBalancing_AWSElasticLoadBalancingServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSElasticLoadBalancingServiceRolePolicy"
  role       = "AWSServiceRoleForElasticLoadBalancing"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForLexV2Bots_43MMA1D3U3_AmazonLexV2BotPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonLexV2BotPolicy"
  role       = "AWSServiceRoleForLexV2Bots_43MMA1D3U3"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForOrganizations_AWSOrganizationsServiceTrustPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSOrganizationsServiceTrustPolicy"
  role       = "AWSServiceRoleForOrganizations"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForRDS_AmazonRDSServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonRDSServiceRolePolicy"
  role       = "AWSServiceRoleForRDS"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForResourceExplorer_AWSResourceExplorerServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSResourceExplorerServiceRolePolicy"
  role       = "AWSServiceRoleForResourceExplorer"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForSupport_AWSSupportServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSSupportServiceRolePolicy"
  role       = "AWSServiceRoleForSupport"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForTrustedAdvisor_AWSTrustedAdvisorServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSTrustedAdvisorServiceRolePolicy"
  role       = "AWSServiceRoleForTrustedAdvisor"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonEKSFargatePodExecutionRole_AmazonEKSFargatePodExecutionRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSFargatePodExecutionRolePolicy"
  role       = "AmazonEKSFargatePodExecutionRole"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonEKSNodeRole_AmazonEC2ContainerRegistryReadOnly" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
  role       = "AmazonEKSNodeRole"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonEKSNodeRole_AmazonEKSWorkerNodePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
  role       = "AmazonEKSNodeRole"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonEKSNodeRole_AmazonEKS_CNI_Policy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
  role       = "AmazonEKSNodeRole"
}

resource "aws_iam_role_policy_attachment" "tfer--codebuild-commit-ECR-to-EKS-service-role_CodeBuildBasePolicy-commit-ECR-to-EKS-eu-central-1" {
  policy_arn = "arn:aws:iam::463865334882:policy/service-role/CodeBuildBasePolicy-commit-ECR-to-EKS-eu-central-1"
  role       = "codebuild-commit-ECR-to-EKS-service-role"
}

resource "aws_iam_role_policy_attachment" "tfer--codebuild-commit-ECR-to-EKS-service-role_SecretsManagerReadWrite" {
  policy_arn = "arn:aws:iam::aws:policy/SecretsManagerReadWrite"
  role       = "codebuild-commit-ECR-to-EKS-service-role"
}

resource "aws_iam_role_policy_attachment" "tfer--codebuild-commit-build-service-role_CodeBuildBasePolicy-commit-build-eu-central-1" {
  policy_arn = "arn:aws:iam::463865334882:policy/service-role/CodeBuildBasePolicy-commit-build-eu-central-1"
  role       = "codebuild-commit-build-service-role"
}

resource "aws_iam_role_policy_attachment" "tfer--codebuild-commit-nginx-buil-service-role_CodeBuildBasePolicy-commit-nginx-buil-eu-central-1" {
  policy_arn = "arn:aws:iam::463865334882:policy/service-role/CodeBuildBasePolicy-commit-nginx-buil-eu-central-1"
  role       = "codebuild-commit-nginx-buil-service-role"
}

resource "aws_iam_role_policy_attachment" "tfer--codebuild-commit-nginx-build-service-role_CodeBuildBasePolicy-commit-nginx-build-eu-central-1" {
  policy_arn = "arn:aws:iam::463865334882:policy/service-role/CodeBuildBasePolicy-commit-nginx-build-eu-central-1"
  role       = "codebuild-commit-nginx-build-service-role"
}

resource "aws_iam_role_policy_attachment" "tfer--codebuild-commit-openresty-build-service-role_CodeBuildBasePolicy-commit-openresty-build-eu-central-1" {
  policy_arn = "arn:aws:iam::463865334882:policy/service-role/CodeBuildBasePolicy-commit-openresty-build-eu-central-1"
  role       = "codebuild-commit-openresty-build-service-role"
}

resource "aws_iam_role_policy_attachment" "tfer--codebuild-commit-python-build-service-role_CodeBuildBasePolicy-commit-python-build-eu-central-1" {
  policy_arn = "arn:aws:iam::463865334882:policy/service-role/CodeBuildBasePolicy-commit-python-build-eu-central-1"
  role       = "codebuild-commit-python-build-service-role"
}

resource "aws_iam_role_policy_attachment" "tfer--cwe-role-eu-central-1-commit-ECR-to-ECS_start-pipeline-execution-eu-central-1-commit-ECR-to-ECS" {
  policy_arn = "arn:aws:iam::463865334882:policy/service-role/start-pipeline-execution-eu-central-1-commit-ECR-to-ECS"
  role       = "cwe-role-eu-central-1-commit-ECR-to-ECS"
}

resource "aws_iam_role_policy_attachment" "tfer--cwe-role-eu-central-1-nginx-ECR-to-ECS_start-pipeline-execution-eu-central-1-nginx-ECR-to-ECS" {
  policy_arn = "arn:aws:iam::463865334882:policy/service-role/start-pipeline-execution-eu-central-1-nginx-ECR-to-ECS"
  role       = "cwe-role-eu-central-1-nginx-ECR-to-ECS"
}

resource "aws_iam_role_policy_attachment" "tfer--cwe-role-eu-central-1-openresty-ECR-to-ECS_start-pipeline-execution-eu-central-1-openresty-ECR-to-ECS" {
  policy_arn = "arn:aws:iam::463865334882:policy/service-role/start-pipeline-execution-eu-central-1-openresty-ECR-to-ECS"
  role       = "cwe-role-eu-central-1-openresty-ECR-to-ECS"
}

resource "aws_iam_role_policy_attachment" "tfer--cwe-role-eu-central-1-openresty-ecr-to-eks_start-pipeline-execution-eu-central-1-openresty-ecr-to-eks" {
  policy_arn = "arn:aws:iam::463865334882:policy/service-role/start-pipeline-execution-eu-central-1-openresty-ecr-to-eks"
  role       = "cwe-role-eu-central-1-openresty-ecr-to-eks"
}

resource "aws_iam_role_policy_attachment" "tfer--cwe-role-eu-central-1-python-ECR-to-ECS_start-pipeline-execution-eu-central-1-python-ECR-to-ECS" {
  policy_arn = "arn:aws:iam::463865334882:policy/service-role/start-pipeline-execution-eu-central-1-python-ECR-to-ECS"
  role       = "cwe-role-eu-central-1-python-ECR-to-ECS"
}

resource "aws_iam_role_policy_attachment" "tfer--ecsTaskExecutionRole_AmazonECSTaskExecutionRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"
  role       = "ecsTaskExecutionRole"
}

resource "aws_iam_role_policy_attachment" "tfer--eksClusterRole_AmazonEKSClusterPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role       = "eksClusterRole"
}

resource "aws_iam_role_policy_attachment" "tfer--rds-monitoring-role_AmazonRDSEnhancedMonitoringRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonRDSEnhancedMonitoringRole"
  role       = "rds-monitoring-role"
}

resource "aws_iam_user" "tfer--AIDAWYAEHJRRAV57SVWYI" {
  force_destroy = "false"
  name          = "read-only"
  path          = "/"
}

resource "aws_iam_user" "tfer--AIDAWYAEHJRRDTY2OC4NO" {
  force_destroy = "false"
  name          = "uri"
  path          = "/"
}

resource "aws_iam_user" "tfer--AIDAWYAEHJRRMWEPDPHT7" {
  force_destroy = "false"
  name          = "ECR-user"
  path          = "/"

  tags = {
    AKIAWYAEHJRRIC752H7O = "ECR-user"
  }

  tags_all = {
    AKIAWYAEHJRRIC752H7O = "ECR-user"
  }
}

resource "aws_iam_user_group_membership" "tfer--uri-002F-Administrators" {
  groups = ["Administrators"]
  user   = "uri"
}

resource "aws_iam_user_policy" "tfer--ECR-user_eks-admin" {
  name = "eks-admin"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "eks:*",
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "eksadministrator"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  user = "ECR-user"
}

resource "aws_iam_user_policy_attachment" "tfer--ECR-user_AmazonEC2ContainerRegistryPowerUser" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryPowerUser"
  user       = "ECR-user"
}

resource "aws_iam_user_policy_attachment" "tfer--ECR-user_SecretsManagerReadWrite" {
  policy_arn = "arn:aws:iam::aws:policy/SecretsManagerReadWrite"
  user       = "ECR-user"
}

resource "aws_iam_user_policy_attachment" "tfer--read-only_ReadOnlyAccess" {
  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
  user       = "read-only"
}

resource "aws_internet_gateway" "tfer--igw-05bf677f766fbed77" {
  tags = {
    Name = "commit-project-igw"
  }

  tags_all = {
    Name = "commit-project-igw"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-013a5f430cc61641d_id}"
}

resource "aws_main_route_table_association" "tfer--vpc-013a5f430cc61641d" {
  route_table_id = "${data.terraform_remote_state.local.outputs.aws_route_table_tfer--rtb-01323178bb14e013f_id}"
  vpc_id         = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-013a5f430cc61641d_id}"
}

resource "aws_network_interface" "tfer--eni-00c712de189b27d6b" {
  description        = "RDSNetworkInterface"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.0.10.153"
  private_ip_list    = ["10.0.10.153"]
  private_ips        = ["10.0.10.153"]
  private_ips_count  = "0"
  security_groups    = ["sg-07ce994535f7be639"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f9d6e3234742f47c"
}

resource "aws_opsworks_user_profile" "tfer--arn-003A-aws-003A-iam-003A--003A-463865334882-003A-user-002F-uri" {
  allow_self_management = "false"
  ssh_username          = "uri"
  user_arn              = "arn:aws:iam::463865334882:user/uri"
}

resource "aws_organizations_account" "tfer--urizaf" {
  email     = "urizaf@gmail.com"
  name      = "urizaf"
  parent_id = "r-2067"
}

resource "aws_organizations_organization" "tfer--urizaf" {
  feature_set = "ALL"
}

resource "aws_resourcegroups_group" "tfer--AppManager-CFN-ECS-Console-V2-Service-nginx-commit-ecs-cluster-commit-a93361a5" {
  description = "Auto-generated by AWS Systems Manager Application Manager for CloudFormation resource ECS-Console-V2-Service-nginx-commit-ecs-cluster-commit-a93361a5"
  name        = "AppManager-CFN-ECS-Console-V2-Service-nginx-commit-ecs-cluster-commit-a93361a5"

  resource_query {
    query = "{\"ResourceTypeFilters\":[\"AWS::AllSupported\"],\"StackIdentifier\":\"arn:aws:cloudformation:eu-central-1:463865334882:stack/ECS-Console-V2-Service-nginx-commit-ecs-cluster-commit-a93361a5/45b0eea0-d721-11ee-bd8b-02990055b08b\"}"
    type  = "CLOUDFORMATION_STACK_1_0"
  }
}

resource "aws_route_table" "tfer--rtb-01323178bb14e013f" {
  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-013a5f430cc61641d_id}"
}

resource "aws_route_table" "tfer--rtb-09514bf630c7eb4c3" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-05bf677f766fbed77"
  }

  tags = {
    Name = "commit-project-rtb-public"
  }

  tags_all = {
    Name = "commit-project-rtb-public"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-013a5f430cc61641d_id}"
}

resource "aws_route_table_association" "tfer--subnet-0cfb6ea70b3a80760" {
  route_table_id = "${data.terraform_remote_state.local.outputs.aws_route_table_tfer--rtb-09514bf630c7eb4c3_id}"
  subnet_id      = "${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-0cfb6ea70b3a80760_id}"
}

resource "aws_route_table_association" "tfer--subnet-0f9d6e3234742f47c" {
  route_table_id = "${data.terraform_remote_state.local.outputs.aws_route_table_tfer--rtb-09514bf630c7eb4c3_id}"
  subnet_id      = "${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-0f9d6e3234742f47c_id}"
}

resource "aws_route_table_association" "tfer--subnet-0fbd442a212d3eb60" {
  route_table_id = "${data.terraform_remote_state.local.outputs.aws_route_table_tfer--rtb-09514bf630c7eb4c3_id}"
  subnet_id      = "${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-0fbd442a212d3eb60_id}"
}

resource "aws_secretsmanager_secret" "tfer--AWS_ECR_ACCESS_KEY_ID" {
  name = "AWS_ECR_ACCESS_KEY_ID"
}

resource "aws_secretsmanager_secret" "tfer--AWS_ECR_SECRET_ACCESS_KEY" {
  name = "AWS_ECR_SECRET_ACCESS_KEY"
}

resource "aws_security_group" "tfer--commit-flask-nginx-gunicorn_sg-01b766028fb997925" {
  description = "commit-flask-nginx-gunicorn"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["87.68.253.119/32"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["87.68.253.119/32"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name   = "commit-flask-nginx-gunicorn"
  vpc_id = "vpc-013a5f430cc61641d"
}

resource "aws_security_group" "tfer--commit-openresty_sg-012ed2715bcff3120" {
  description = "commit-openresty"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["87.68.253.119/32"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["87.68.253.119/32"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name   = "commit-openresty"
  vpc_id = "vpc-013a5f430cc61641d"
}

resource "aws_security_group" "tfer--db_sg-07ce994535f7be639" {
  description = "Created by RDS management console"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks     = ["87.68.253.119/32"]
    from_port       = "3306"
    protocol        = "tcp"
    security_groups = ["sg-04ae345762eeb011a", "sg-0be73e810ab5dcd99"]
    self            = "false"
    to_port         = "3306"
  }

  ingress {
    description     = "commit-flask-nginx-gunicorn"
    from_port       = "3306"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.local.outputs.aws_security_group_tfer--commit-flask-nginx-gunicorn_sg-01b766028fb997925_id}"]
    self            = "false"
    to_port         = "3306"
  }

  ingress {
    description     = "commit-openresty"
    from_port       = "3306"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.local.outputs.aws_security_group_tfer--commit-openresty_sg-012ed2715bcff3120_id}"]
    self            = "false"
    to_port         = "3306"
  }

  name = "db"

  tags = {
    Name = "db-sg"
  }

  tags_all = {
    Name = "db-sg"
  }

  vpc_id = "vpc-013a5f430cc61641d"
}

resource "aws_security_group" "tfer--default_sg-0c698ff2cf823f0f2" {
  description = "default VPC security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    from_port = "0"
    protocol  = "-1"
    self      = "true"
    to_port   = "0"
  }

  name   = "default"
  vpc_id = "vpc-013a5f430cc61641d"
}

resource "aws_subnet" "tfer--subnet-06d28d16f98685e35" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.0.64.0/20"
  enable_dns64                                   = "false"
  enable_lni_at_device_index                     = "0"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "commit-project-subnet-private2-eu-central-1a"
  }

  tags_all = {
    Name = "commit-project-subnet-private2-eu-central-1a"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-013a5f430cc61641d_id}"
}

resource "aws_subnet" "tfer--subnet-08bb05ee1d0272a48" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.0.48.0/20"
  enable_dns64                                   = "false"
  enable_lni_at_device_index                     = "0"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "commit-project-subnet-private1-eu-central-1b"
  }

  tags_all = {
    Name = "commit-project-subnet-private1-eu-central-1b"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-013a5f430cc61641d_id}"
}

resource "aws_subnet" "tfer--subnet-0cfb6ea70b3a80760" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.0.16.0/20"
  enable_dns64                                   = "false"
  enable_lni_at_device_index                     = "0"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "commit-project-subnet-public2-eu-central-1b"
  }

  tags_all = {
    Name = "commit-project-subnet-public2-eu-central-1b"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-013a5f430cc61641d_id}"
}

resource "aws_subnet" "tfer--subnet-0f9d6e3234742f47c" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.0.0.0/20"
  enable_dns64                                   = "false"
  enable_lni_at_device_index                     = "0"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "commit-project-subnet-public1-eu-central-1a"
  }

  tags_all = {
    Name = "commit-project-subnet-public1-eu-central-1a"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-013a5f430cc61641d_id}"
}

resource "aws_subnet" "tfer--subnet-0fbd442a212d3eb60" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.0.32.0/20"
  enable_dns64                                   = "false"
  enable_lni_at_device_index                     = "0"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "commit-project-subnet-public3-eu-central-1a"
  }

  tags_all = {
    Name = "commit-project-subnet-public3-eu-central-1a"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-013a5f430cc61641d_id}"
}

resource "aws_vpc" "tfer--vpc-013a5f430cc61641d" {
  assign_generated_ipv6_cidr_block     = "false"
  cidr_block                           = "10.0.0.0/16"
  enable_dns_hostnames                 = "true"
  enable_dns_support                   = "true"
  enable_network_address_usage_metrics = "false"
  instance_tenancy                     = "default"
  ipv6_netmask_length                  = "0"

  tags = {
    Name = "commit-project-vpc"
  }

  tags_all = {
    Name = "commit-project-vpc"
  }
}

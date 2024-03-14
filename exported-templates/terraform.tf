terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 3.0"
        }
    }
}

provider "aws" {
    region = "eu-central-1"
}

resource "aws_ecs_cluster" "ECSCluster" {
    name = "ecs-cluster-commit"
}

resource "aws_ecr_repository" "ECRRepository" {
    name = "commit-fargate-openresty"
}

resource "aws_db_instance" "RDSDBInstance" {
    identifier = "database-1"
    allocated_storage = 20
    instance_class = "db.t2.micro"
    engine = "mysql"
    username = "admin"
    password = "REPLACEME"
    backup_window = "20:06-20:36"
    backup_retention_period = 0
    availability_zone = "eu-central-1a"
    maintenance_window = "tue:02:33-tue:03:03"
    multi_az = false
    engine_version = "8.0.35"
    auto_minor_version_upgrade = true
    license_model = "general-public-license"
    publicly_accessible = true
    storage_type = "gp2"
    port = 3306
    storage_encrypted = false
    copy_tags_to_snapshot = true
    monitoring_interval = 0
    iam_database_authentication_enabled = false
    deletion_protection = false
    db_subnet_group_name = "default-vpc-013a5f430cc61641d"
    vpc_security_group_ids = [
        "sg-07ce994535f7be639"
    ]
    max_allocated_storage = 1000
}

resource "aws_vpc" "EC2VPC" {
    cidr_block = "10.0.0.0/16"
    enable_dns_support = true
    enable_dns_hostnames = true
    instance_tenancy = "default"
    tags = {
        Name = "commit-project-vpc"
    }
}

resource "aws_subnet" "EC2Subnet" {
    availability_zone = "eu-central-1b"
    cidr_block = "10.0.16.0/20"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    map_public_ip_on_launch = false
}

resource "aws_subnet" "EC2Subnet2" {
    availability_zone = "eu-central-1b"
    cidr_block = "10.0.32.0/20"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    map_public_ip_on_launch = false
}

resource "aws_subnet" "EC2Subnet3" {
    availability_zone = "eu-central-1a"
    cidr_block = "10.0.0.0/20"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    map_public_ip_on_launch = false
}

resource "aws_internet_gateway" "EC2InternetGateway" {
    tags = {
        Name = "commit-project-igw"
    }
    vpc_id = "${aws_vpc.EC2VPC.id}"
}

resource "aws_codepipeline" "CodePipelinePipeline" {
    name = "openresty-ECR-to-ECS"
    role_arn = "arn:aws:iam::463865334882:role/service-role/AWSCodePipelineServiceRole-eu-central-1-openresty-ECR-to-ECS"
    artifact_store {
        location = "codepipeline-eu-central-1-581888077454"
        type = "S3"
    }
    stages {
        name = "Source"
        action = [
            {
                name = "Source"
                category = "Source"
                owner = "AWS"
                configuration {
                    RepositoryName = "commit-fargate-openresty"
                }
                provider = "ECR"
                version = "1"
                output_artifacts = [
                    "SourceArtifact"
                ]
                run_order = 1
            }
        ]
    }
    stages {
        name = "Build"
        action = [
            {
                name = "Build"
                category = "Build"
                owner = "AWS"
                configuration {
                    ProjectName = "commit-openresty-build"
                }
                input_artifacts = [
                    "SourceArtifact"
                ]
                provider = "CodeBuild"
                version = "1"
                output_artifacts = [
                    "BuildArtifact"
                ]
                run_order = 1
            }
        ]
    }
    stages {
        name = "Deploy"
        action = [
            {
                name = "Deploy"
                category = "Deploy"
                owner = "AWS"
                configuration {
                    ClusterName = "ecs-cluster-commit"
                    FileName = "imagedefinitions.json"
                    ServiceName = "commit-openresty"
                }
                input_artifacts = [
                    "BuildArtifact"
                ]
                provider = "ECS"
                version = "1"
                run_order = 1
            }
        ]
    }
}

resource "aws_vpc_endpoint" "EC2VPCEndpoint" {
    vpc_endpoint_type = "Gateway"
    vpc_id = "${aws_vpc.EC2VPC.id}"
    service_name = "com.amazonaws.eu-central-1.s3"
    policy = "{\"Version\":\"2008-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":\"*\",\"Action\":\"*\",\"Resource\":\"*\"}]}"
    private_dns_enabled = false
}

resource "aws_route" "EC2Route" {
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = "igw-05bf677f766fbed77"
    route_table_id = "rtb-09514bf630c7eb4c3"
}

resource "aws_route_table" "EC2RouteTable" {
    vpc_id = "${aws_vpc.EC2VPC.id}"
    tags = {
        Name = "commit-project-rtb-public"
    }
}

resource "aws_route_table" "EC2RouteTable2" {
    vpc_id = "${aws_vpc.EC2VPC.id}"
    tags = {}
}

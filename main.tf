terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
  backend "s3" {
    bucket = "tod-bucket-001"
    key    = "tod.tfstate"
    region = "us-east-1"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.aws_region
}

# Modules
# VPC
module "vpc" {
  source         = "./modules/vpc"
  vpc_cidr_block = var.vpc_cidr_block
  vpc_name       = var.vpc_name
}


# internet gateway
module "internet_gateway" {
  source                = "./modules/internet_gateway"
  vpc_id                = module.vpc.vpc_id
  internet_gateway_name = var.internet_gateway_name

  #tester internet gateway name
  tester_internet_gateway_name = var.tester_internet_gateway_name
}

# subnets
module "subnets" {
  source                    = "./modules/subnets"
  vpc_id                    = module.vpc.vpc_id
  subnet1_cidr_block        = var.subnet1_cidr_block
  subnet1_availability_zone = var.subnet1_availability_zone
  subnet1_name              = var.subnet1_name
  subnet2_cidr_block        = var.subnet2_cidr_block
  subnet2_availability_zone = var.subnet2_availability_zone
  subnet2_name              = var.subnet2_name
  subnet3_cidr_block        = var.subnet3_cidr_block
  subnet3_availability_zone = var.subnet3_availability_zone
  subnet3_name              = var.subnet3_name
}

#route tables
module "route_tables" {
  source                        = "./modules/route_tables"
  vpc_id                        = module.vpc.vpc_id
  public_route_table_cidr_block = var.public_route_table_cidr_block
  internet_gateway_id           = module.internet_gateway.internet_gateway_id
  route_table_name              = var.route_table_name
}

# route table associations
module "route_table_associations" {
  source         = "./modules/route_table_associations"
  subnet1_id     = module.subnets.subnet1_id
  subnet2_id     = module.subnets.subnet2_id
  subnet3_id     = module.subnets.subnet3_id
  route_table_id = module.route_tables.route_table_id
}

# security groups
module "security_groups" {
  source              = "./modules/security_groups"
  vpc_id              = module.vpc.vpc_id
  security_group_name = var.security_group_name
}
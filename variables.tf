# aws region
variable "aws_region" {}

# vpc 
variable "vpc_cidr_block" {}
variable "vpc_name" {}

# internet gateway
variable "internet_gateway_name" {}

# subnets
variable "subnet1_cidr_block" {}
variable "subnet1_availability_zone" {}
variable "subnet1_name" {}

variable "subnet2_cidr_block" {}
variable "subnet2_availability_zone" {}
variable "subnet2_name" {}

variable "subnet3_cidr_block" {}
variable "subnet3_availability_zone" {}
variable "subnet3_name" {}

# route tables
variable "public_route_table_cidr_block" {}
variable "route_table_name" {}

# security groups
variable "security_group_name" {}

# ec2
variable "ami_id" {}
variable "instance_type" {}
variable "key_name" {}
variable "ec2_region" {}
variable "instance_name" {}

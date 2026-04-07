# aws region
aws_region = "us-east-1"

# vpc 
vpc_cidr_block = "10.0.0.0/16"
vpc_name       = "tod_vpc_qa"

# internet gateway
internet_gateway_name = "tod_internet_gateway_qa"

# subnets
subnet1_cidr_block        = "10.0.1.0/24"
subnet1_availability_zone = "us-east-1a"
subnet1_name              = "tod-public-subnet-1-1a_qa"

subnet2_cidr_block        = "10.0.2.0/24"
subnet2_availability_zone = "us-east-1a"
subnet2_name              = "tod-public-subnet-2-1a_qa"

subnet3_cidr_block        = "10.0.3.0/24"
subnet3_availability_zone = "us-east-1b"
subnet3_name              = "tod-public-subnet-3-1b_qa"

# route tables
public_route_table_cidr_block = "0.0.0.0/0"
route_table_name              = "tod_public_route_table_qa"

# security groups
security_group_name = "tod_security_group_qa"

# ec2
ami_id        = "ami-04680790a315cd58d"
instance_type = "t3.micro"
key_name      = "KKey"
ec2_region    = "us-east-1"
instance_name = "Tod_demo_instance_qa"

# dynamodb
dynamodb_table_name = "tod_terraform_locks_qa"
billing_mode        = "PAY_PER_REQUEST"
hash_key            = "LockID"
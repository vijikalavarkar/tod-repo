resource "aws_subnet" "tod-public-subnet-1-1a" {
  vpc_id     = var.vpc_id
  cidr_block = var.subnet1_cidr_block
  availability_zone = var.subnet1_availability_zone

  tags = {
    Name = var.subnet1_name
  }
}

resource "aws_subnet" "tod-public-subnet-2-1a" {
  vpc_id     = var.vpc_id
  cidr_block = var.subnet2_cidr_block
  availability_zone = var.subnet2_availability_zone

  tags = {
    Name = var.subnet2_name
  }
}

resource "aws_subnet" "tod-public-subnet-3-1b" {
  vpc_id     = var.vpc_id
  cidr_block = var.subnet3_cidr_block
  availability_zone = var.subnet3_availability_zone

  tags = {
    Name = var.subnet3_name
  }
}
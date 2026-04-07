resource "aws_internet_gateway" "tod_internet_gateway" {
  vpc_id = var.vpc_id

  tags = {
    Name = var.internet_gateway_name
  }
}

#Tester IGW
resource "aws_internet_gateway" "tester_internet_gateway" {
  vpc_id = data.aws_vpc.tester-vpc.id

  tags = {
    Name = var.tester_internet_gateway_name
  }
}
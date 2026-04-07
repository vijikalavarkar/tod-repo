resource "aws_internet_gateway" "tod_internet_gateway" {
  vpc_id = var.vpc_id

  tags = {
    Name = var.internet_gateway_name
  }
}
resource "aws_route_table" "tod_public_route_table" {
  vpc_id = var.vpc_id

  route {
    cidr_block = var.public_route_table_cidr_block
    gateway_id = var.internet_gateway_id
  }

  tags = {
    Name = var.route_table_name
  }
}
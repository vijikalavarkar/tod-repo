resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id = data.aws_subnet.tod-public-subnet-1-1a.id
  vpc_security_group_ids = [ data.aws_security_group.tod_security_group.id ]
  region = var.ec2_region
  

  tags = {
    Name = var.instance_name
  }
}
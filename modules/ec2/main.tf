resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name = var.key_name
  subnet_id = var.subnet1_id
  vpc_security_group_ids = [ var.security_group_id ]
  region = var.ec2_region

  tags = {
    Name = var.instance_name
  }

  lifecycle {
    create_before_destroy = true
  }

}
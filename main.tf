terraform {
  backend "s3" {
    bucket = "tod-bucket-001"
    key    = "tod-support.tfstate"
    region = "us-east-1"
  }
}


# Modules

# EC2
module "ec2" {
  source        = "./modules/ec2"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  ec2_region    = var.ec2_region
  instance_name = var.instance_name
}

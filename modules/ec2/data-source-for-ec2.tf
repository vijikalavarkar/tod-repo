data "aws_subnet" "tod-public-subnet-1-1a" {
  id = "subnet-050a6d1eb647ac75d"
}

data "aws_security_group" "tod_security_group" {
  id = "sg-0cb7749b0e8fe61de" 
}
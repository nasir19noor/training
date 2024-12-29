resource "aws_subnet" "main" {
  vpc_id     = "vpc-01e4720a7b14733ec"
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "subnet-nasir-1"
  }
}

provider "aws" {
  region = "ap-southeast-1" 
}
resource "aws_internet_gateway" "gw" {
  vpc_id = "vpc-01e4720a7b14733ec"

  tags = {
    Name = "nasir-igw"
  }
}

provider "aws" {
  region = "ap-southeast-1" 
}
resource "aws_instance" "web" {
  ami           = "ami-0995922d49dc9a17d"
  instance_type = "t2.micro"
  subnet_id      = "subnet-0a63022765640f346"
  vpc_security_group_ids = ["sg-08428a35926d6c66e"]
  key_name = "nasir-key"

  tags = {
    Name = "webserver-nasir-2"
  }
}

provider "aws" {
  region = "ap-southeast-1" 
}
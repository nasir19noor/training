resource "aws_security_group" "allow_webserver" {
  name        = "allow_webserver_nasir"
  description = "Allow inbound traffic and all outbound traffic"
  vpc_id      = "vpc-01e4720a7b14733ec"

  tags = {
    Name = "allow_webserver_nasir"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_ssh" {
  security_group_id = aws_security_group.allow_webserver.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}

resource "aws_vpc_security_group_ingress_rule" "allow_http" {
  security_group_id = aws_security_group.allow_webserver.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}


resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.allow_webserver.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" 
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv6" {
  security_group_id = aws_security_group.allow_webserver.id
  cidr_ipv6         = "::/0"
  ip_protocol       = "-1" 
}

provider "aws" {
  region = "ap-southeast-1" 
}
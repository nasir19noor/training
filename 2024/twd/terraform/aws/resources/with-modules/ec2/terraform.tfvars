  ami                      = "ami-0995922d49dc9a17d"
  instance_type            = "t2.micro"
  subnet_id                = "subnet-0114523d904efebed"
  vpc_security_group_ids   = [var.vpc_security_group_ids]
  key_name                 = var.key_name
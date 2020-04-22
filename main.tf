# Specify the provider and access details
provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = var.aws_region

  version = "~> 2.0"
}

resource "aws_instance" "puppet-master" {
  ami                    = var.ami
  instance_type          = var.instance_type_master
  key_name               = aws_key_pair.my_aws_key.key_name
  vpc_security_group_ids = [aws_security_group.puppetsg.id]
  
  tags = {
    Name = "puppet-master"
  }
}

resource "aws_instance" "puppet-client" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = aws_key_pair.my_aws_key.key_name
  vpc_security_group_ids = [aws_security_group.puppetsg.id]

  tags = {
    Name = "puppet-client"
  }
}


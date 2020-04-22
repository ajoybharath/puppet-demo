variable "aws_access_key" {
  default = "ACCESS KEY"
}

variable "aws_secret_key" {
  default = "SECRET KEY"
}

variable "aws_region" {
  description = "AWS region on which we will setup the swarm cluster"
  default     = "ap-south-1"
}

variable "ami" {
  description = "CentOS Linux"
  default     = "ami-002d6833390304363"
}

variable "instance_type_master" {
  description = "Instance type master"
  default     = "t2.medium"
}

variable "instance_type" {
  description = "Instance type"
  default     = "t2.micro"
}

resource "aws_key_pair" "my_aws_key" {
  key_name   = "aws-key"
  public_key = file("my_aws_key.pub")
}

variable "ssh_private_key" {
  description = "File location of the ssh private key"
  default     = "Absolute path for your SSH private KEY"
}


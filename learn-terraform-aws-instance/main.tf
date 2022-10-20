terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami                    = var.instance_ami
  instance_type          = var.instance_type
  vpc_security_group_ids = [var.instance_security_group]
  subnet_id              = var.instance_subnet
  associate_public_ip_address = true

  tags = {
    Name = var.instance_name
  }
}


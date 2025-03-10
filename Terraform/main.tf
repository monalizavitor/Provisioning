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
  region  = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-080e1f13689e07408"
  instance_type = "t2.micro"
  key_name = "iac-key"
  tags = {
    Name = "Primeira instancia"
  }
}
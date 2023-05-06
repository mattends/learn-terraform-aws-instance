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
  region = "eu-west-3"
}

resource "aws_instance" "app_server" {
  ami           = "ami-014571f1593b7be25"
  instance_type = "t2.micro"

  tags = {
    Name = "GhanaAppServerInstance"
  }
}

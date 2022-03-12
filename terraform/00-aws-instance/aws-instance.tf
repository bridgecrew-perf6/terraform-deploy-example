terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "eu-west-3"
}

resource "aws_instance" "example" {
  ami = "ami-06ad2ef8cd7012912"
  instance_type = "t2.micro"
}

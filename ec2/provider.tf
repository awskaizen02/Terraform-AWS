terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.51.1"
    }
  }
}

provider "aws" {
  # Configuration options
}


resource "aws_instance" "dev-nut" {
  ami           = "ami-0cc9838aa7ab1dce7"
  instance_type = "t2.micro"
}
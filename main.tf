terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
}
provider "aws" {
  region     = "ap-southeast-2"
  access_key = "AKIA2UC26WJ4A3GJIZZF"
  secret_key = "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"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}
resource "aws_instance" "web" {
  ami           = "ami-0ec0514235185af79"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld1"
  }
}
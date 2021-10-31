terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
  access_key = "AKIA4SYOYXQBNQXUIBMH"
  secret_key = "/0LwzcBWuG7Mjm6+Cxy7XdnNQ7LRD/Z/AXXfeWIl"
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_instance" "web" {
  ami           = "ami-00399ec92321828f5"
  instance_type = "t2.micro"
}

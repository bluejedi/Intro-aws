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
  profile = "default"
}

resource "aws_s3_bucket" "test" {
  tags = {
    Name = "Test bucket"
  }
}
resource "aws_instance" "app_server" {
  ami           = "ami-0953476d60561c955" 
  instance_type = "t2.micro"
  tags = {
    Name = "JunTestAwsInstance"
  }
}


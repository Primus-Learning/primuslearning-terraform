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
  ami           = "ami-09d3b3274b6c5d4aa"
  instance_type = "t2.micro"
  count = 3
 
  tags = {
    Name = "MyAppServer-${count.index}"
  }
}

output app-ser-ip {
  value       = ["${aws_instance.app_server.1.public_ip}"]

}

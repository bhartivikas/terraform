terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  shared_credentials_files = [ "C:\\Users\\2412f\\.aws\\credentials" ]
  shared_config_files = ["C:\\Users\\2412f\\.aws\\config"]
}

resource "aws_instance" "s1" {
  ami           = "ami-0b08bfc6ff7069aff"
  instance_type = "t2.micro"

  tags = {
    Name = "server2"
  }
}

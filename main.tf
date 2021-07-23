terraform {
  backend = "remote"
   org_name = "hunter"
    workspaces =  {
       Name = "terraform-pipeline"
       }

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.51.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
  shared_credentials_file = "/home/ec2-user/.aws/credentials"
}

resource "aws_instance" "JenkinsMaster" {
  ami = "ami-0dc8f589abe99f538"
  instance_type = "t2.micro"
  availability_zone = "us-west-2b"
  tags =  { 
    Name= "Testing_instance"
}

}


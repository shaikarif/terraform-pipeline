terraform {
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


resource "aws_vpc" "Main"  {
     cidr_block  = "10.0.0.0/16"
}
resource "aws_internet_gateway" "Main" {
       vpc_id = aws_vpc.Main.id
       tags = {
           Name = "terraform-igw"
    }

}
resource "aws_instance" "JenkinsMaster" {
  ami = "ami-0dc8f589abe99f538"
  instance_type = "t2.micro"
  availability_zone = "us-west-2b"
  tags =  { 
    Name= "jenkins_instance"
}

}
resource "aws_s3" "My_bucket" {
       acl = "private"
       tags = {
       Name = "My_Bucket"
       }
  }
}


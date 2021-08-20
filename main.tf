terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.55.0"
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
  count = length(var.availability_zone)
  availability_zone = element(var.availability_zone, count.index)
  tags =  { 
    Name= "jenkins_instance.count.index"
}

}
resource "aws_s3_bucket" "My_bucket" {
       acl = "private"
       tags = {
       Name = "My_Bucket"
       }
  }


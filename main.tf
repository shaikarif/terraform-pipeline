terraform {
  
required_providers {
aws = {

  source = "hashicorp/aws"
}
   }
 }

provider "aws" {
region = "us-west-2"
Access_key_ID = (var.Access_key_ID)
Secret_access_key = (var.Secret_access_key)

}

resource "aws_instance" "JenkinsMaster" {
  ami = "ami-0dc8f589abe99f538"
  instance_type = "t2.micro"
  availability_zone = "us-west-2b"

}

resource"aws_vpc" "Main" {

  cidr_block = "192.10.0.0/24"
}

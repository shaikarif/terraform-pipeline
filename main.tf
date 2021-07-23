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
  access_key = "AKIA5UNHNPBAM6ZIBOFK"
  secret_key = "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"
}

resource "aws_instance" "JenkinsMaster" {
  ami = "ami-0dc8f589abe99f538"
  instance_type = "t2.micro"
  availability_zone = "us-west-2b"

}

resource"aws_vpc" "Main" {

  cidr_block = "192.10.0.0/24"
}

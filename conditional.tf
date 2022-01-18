provider "aws" {
  region = "us-east-1"
}


variable "istest" {}

resource "aws_instance" "dev" {
  ami           = "ami-08e4e35cccc6189f4"
  instance_type = "t2.micro"
  count         = var.istest == true ? 2 : 0
}

resource "aws_instance" "prod" {
  ami           = "ami-08e4e35cccc6189f4"
  instance_type = "t2.large"
  count         = var.istest == false ? 1 : 0
}
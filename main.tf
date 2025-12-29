provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "three" {
  count         = 1
  ami           = "ami-068c0051b15cdb816"
  instance_type = "t3.micro"

  tags = {
    Name = "test-server"
  }
}

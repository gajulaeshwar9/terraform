provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "two" {
  count         = 1
  ami           = "ami-07ff62358b87c7116"
  instance_type = "t3.micro"

  tags = {
    Name = "test-server_1"
  }
}

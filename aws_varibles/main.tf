provider "aws" {
  profile = "terra"
  region = "us-east-1"
}

resource "aws_instance" "test" {
  ami = "ami-0affd4508a5d2481b"
  instance_type = "t2.micro"
  tags = {
    "Name" = "With_terraform"
  }
}
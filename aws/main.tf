provider "aws" {
  profile = "terra"
  region = "us-east-1"

}
resource "aws_instance" "ragh_terr" {
  ami = "ami-04505e74c0741db8d"
  instance_type = var.instance_type
  tags = {
    "Name" = "ragh_terra"
  }
}

variable "instance_type" {
  description = "AMI for the instance"
  type = string
  default = "t2.micro"
}

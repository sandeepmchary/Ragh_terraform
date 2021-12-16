provider "aws" {
  profile = "terra"
  region = "us-east-1"

}
resource "aws_instance" "ragh_terr" {
  ami = "ami-04505e74c0741db8d"
  instance_type = var.instance_type
  count = 1
  associate_public_ip_address = var.enable_public_ip
  tags = {
    "Name" = "ragh_terraform"
  }
}

variable "instance_type" {
  description = "AMI for the instance"
  type = string
  default = "t2.micro"
}

variable "instance_count" {
  description = "No of instances"
  type = number
  default = 2
}

variable "enable_public_ip" {
  description = "Enable public ip address"
  type = bool
  default = true
}

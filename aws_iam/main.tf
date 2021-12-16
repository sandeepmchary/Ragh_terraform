provider "aws" {
  profile = "terra"
  region = "us-east-1"
}

resource "aws_iam_user" "example" {
  count = length(var.user_name)
  name = var.user_name[count.index]
}

variable "user_name" {
    type = list(string)
    description = "User creation"
    default = [ "User1", "User2", "User3" ]
}

variable "project_environment" {
  description = "project Environment"
  type = map(string)
  default = {
    "env" = "alpha"
    "project" = "test"
  }
}
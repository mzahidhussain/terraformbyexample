
data "aws_subnets" "private-subnets" {
  filter {
    name   = "tag:Name"
    values = ["private-subnet"]
  }
  filter {
    name   = "vpc-id"
    values = [var.vpc_id]
  }
  #  availability_zone = var.availability_zone
}


data "aws_vpc" "selected" {
  id = var.vpc_id
}



data "aws_region" "current" {}
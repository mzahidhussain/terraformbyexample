variable "availability_zone" {
  default = "us-east-1b"
}


variable "vpc_id" {
  default     = "vpc-09a9af01a8545ce38"
  description = "VPC Value"
}

variable "project" {
  default = "carver-k8"
  type    = string
}

variable "tags" {
  type = map(string)
  default = {
    Name        = "CarverTech-k8s"
    Owner       = "Murtaza Zahid"
    Enviornment = "DEV"
  }
}

variable "instancetype" {
  type = map(string)
  default = {
    "dev"   = "t3.small"
    "stage" = "t3.small"
  }
}
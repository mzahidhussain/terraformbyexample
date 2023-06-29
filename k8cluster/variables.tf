variable "availability_zone" {
    default = "us-east-1b"
}


variable "vpc_id" {
    default = "vpc-03527475f6ad5a600"
    description = "VPC Value"
}

variable "project" {
  default = "carver-k8"
  type = string 
}

variable "tags" {
  type = map(string)
  default = {
    Name        = "CarverTech-k8s"
    Owner       = "Murtaza Zahid"
    Enviornment = "DEV"
  }
}
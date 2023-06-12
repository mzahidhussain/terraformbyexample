
variable "name" {
  type    = string
  default = "carvertech-vpc"
}

variable "cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "azs" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1b"]
}

variable "create_vpc" {
  type    = bool
  default = "true"
}

variable "create_igw" {
  type    = bool
  default = "true"
}

variable "enable_dns_hostnames" {
  type    = bool
  default = "true"
}

variable "enable_dns_support" {
  type    = bool
  default = "true"
}


variable "enable_nat_gateway" {
  type    = bool
  default = "true"
}

variable "single_nat_gateway" {
  type    = bool
  default = "true"
}

variable "private_subnets" {
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}


variable "public_subnets" {
  type    = list(string)
  default = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "database_subnets" {
  type    = list(string)
  default = ["10.0.5.0/24", "10.0.6.0/24"]
}


variable "private_subnet_tags" {
  type    = map(string)
  default = { Name = "private-subnet" }
}


variable "public_subnet_tags" {
  type    = map(string)
  default = { Name = "public-subnet" }
}


variable "database_subnet_tags" {
  type    = map(string)
  default = { Name = "db-subnet" }
}


variable "private_route_table_tags" {
  type    = map(string)
  default = { Name = "private-route-table" }
}

variable "default_route_table_tags" {
  type    = map(string)
  default = { Name = "carver-tech-default-route-table" }
}

variable "public_route_table_tags" {
  type    = map(string)
  default = { Name = "public-route-table" }
}

variable "database_route_table_tags" {
  type    = string
  default = "db-route-table"
}

variable "igw_tags" {
  type    = map(string)
  default = { Name = "CarverTech-IGW" }
}


variable "nat_eip_tags" {
  type    = map(string)
  default = { Name = "carvertech-eip" }
}


variable "vpc_tags" {
  type    = map(string)
  default = { Name = "Carvertech-mainVPC" }
}

variable "tags" {
  type = map(string)
  default = {
    Name        = "CarverTech-vpc"
    Owner       = "Murtaza Zahid"
    Enviornment = "DEV"
  }
}
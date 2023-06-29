terraform {
  backend "s3" {
    bucket = "carvertech-statefile"
    key    = "vpc/vpc.tfstate"
    region = "eu-west-2"
  }
}

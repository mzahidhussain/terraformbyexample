terraform {
  backend "s3" {
    bucket = "carvertech-statefile"
    key    = "bastionhost/bastion.tfstate"
    region = "eu-west-2"
  }
}

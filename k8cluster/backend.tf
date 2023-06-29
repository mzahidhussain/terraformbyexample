terraform {
  backend "s3" {
    bucket = "carvertech-statefile"
    key    = "K8cluster/k8s.tfstate"
    region = "eu-west-2"
  }
}

variable "vmnames" {
  type    = list(string)
  default = ["mzahid", "husain", "abbas"]

}

variable "instancetype" {
  type = map(string)
  default = {
    "dev"  = "t3.micro"
    "qa"   = "t3.large"
    "prod" = "t3.large"
  }

}
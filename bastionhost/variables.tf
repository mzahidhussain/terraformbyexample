variable "vpc_id" {
    default = "vpc-0dc8853ba6eae7d3e"
    description = "VPC Value"
}

variable "key" {
    default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDMBJJDYQBFn2byTzaBwwiji7zd6tH9CzFE13BAE+9080JIZh8xCJkYRkGKZfZiKp883OBw3YfwFQzCT4LTmAbaSzQ5xlnIxQdlX8ruyRcwvPFutdPanqdIb9ZYM/nHY4fxK51O1+tp+rr9sQCv80iENrlWTwmXWthG4akFu7Q3gf+ti0R27TQdRmOisyU/3t9FRORQkOe8w1z2NaVDT4x1Zjlu7sciO2aO8DgdTi7yfYeac5fgo3ZBJ6dqhslsT1url6ixUCWpM41HQHiEBzivs4QXs+s0gVdz8+W8CvR3O6Ke3IBA4DTGmCUqaig01cu0Ms4a3b7CQNYitt2BRZmcMayqHiAOYFKPyYg1roVAyTsHk1EYnZJCr1N6osYLf8igFzQiIDEMw9ScKfudrLTjCPbF8kYAP9ewRR1EJCCgBoenSKGcOw9NG7szK4OsXP2svjTRH5Azdth9mKtEF5nu0xuyaXNXd/qgj5rUNbOCIi4Dm8jqnyJ/trKhQ5K8Fys= murtaza.zahid@Murtazas-MBP"
    description = "KMS Public Hash for Key to Work"

}

variable "availability_zone" {
    default = "us-east-1b"
}

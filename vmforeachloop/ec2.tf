resource "aws_instance" "ec2" {
  ami           = "ami-09042b2f6d07d164a"
  instance_type = var.instancetype["dev"] 
  for_each = toset(var.vmnames)   # picks var.vmnames one by one , which can be referenced by using each.value as it will be going through loop.associate_public_ip_address = 
  
  tags = {
    Name = each.value
    instancetype = var.instancetype["dev"]
  }
}


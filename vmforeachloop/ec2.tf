data "aws_availability_zones" "azs" {
  filter {
    name   = "opt-in-status"
    values = ["opt-in-not-required"]
  }
}


resource "aws_instance" "ec2" {
  ami           = "ami-09042b2f6d07d164a"
  instance_type = var.instancetype["dev"] 
  #for_each =    toset(var.vmnames)   # picks var.vmnames one by one , which can be referenced by using each.value as it will be going through loop.associate_public_ip_address = 
  for_each = toset(data.aws_availability_zones.azs.names)
  availability_zone = each.key
  
/*
this code above will read the data from azs then will run the foreach loop, then process the data and apply it as name in tags for availability zone like : 
instanceid-us-east-1f" for one instance and for another one like instanceid-us-east-1e etc 
you cannnot use multuple foreach in 1 resource.
*/
  
    tags = {
    Name = "instanceid-${each.value}"
    instancetype = var.instancetype["dev"]
  }
}


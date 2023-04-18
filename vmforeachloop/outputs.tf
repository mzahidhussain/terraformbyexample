##output for Loop# 

output "ec2names"  {
    description = "EC2 with loops "
    value = [for output in aws_instance.ec2 : output.public_dns]  # here output is just a variable and then output being used to go through loop for each instance 

} 


##outputfor Maps #
output "ec2maps1" {
    description = "output with EC2 Maps"
    value = {for instance in aws_instance.ec2: instance.id => instance.public_dns}

}


## output using Maps Advanced

output "ec2maps" {
    description = "ec2 with maps"
    value = {for d, ec2s in aws_instance.ec2: d => ec2s.public_dns}
}
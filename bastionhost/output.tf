
## output using Maps Advanced

output "aws_eip" {
  description = "ec2 with maps"
  value       =  {for x in aws_eip.eip[*] : x.public_dns => x.public_ip }
}



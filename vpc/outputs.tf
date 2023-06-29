output "private_subnets" {

    #value = module.vpc.private_subnets
    value = [for output in module.vpc.private_subnets : output] # here output is just a variable and then output being used to go through loop for each instance 
}

output "public_subnets" {

    #value = module.vpc.private_subnets
    value = [for output in module.vpc.public_subnets : output] 
}

output "database_subnets" {

    #value = module.vpc.private_subnets
    value = [for output in module.vpc.database_subnets : output ]
}

output "db_cidr" {

    #value = module.vpc.private_subnets
    value = [for output in module.vpc.database_subnets_cidr_blocks : output]
}

output "vpc_cidr" {

    value =  module.vpc. vpc_cidr_block
}

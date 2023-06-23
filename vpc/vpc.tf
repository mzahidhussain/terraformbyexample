module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "4.0.1"

  # Basic Details # 

  name                 = var.name
  cidr                 = var.cidr
  azs                  = var.azs
  create_vpc           = var.create_vpc
  create_igw           = var.create_igw
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support   = var.enable_dns_support
  enable_nat_gateway   = var.enable_nat_gateway
  single_nat_gateway   = var.single_nat_gateway

  # Subnet CIDRs
  private_subnets  = var.private_subnets
  public_subnets   = var.public_subnets
  database_subnets = var.database_subnets


  # TAGS # 
  private_subnet_tags       = var.private_subnet_tags
  public_subnet_tags        = var.public_subnet_tags
  database_subnet_tags      = var.database_subnet_tags
  private_route_table_tags  = var.private_route_table_tags
  default_route_table_tags  = var.default_route_table_tags
  public_route_table_tags   = var.public_route_table_tags
  database_route_table_tags = var.database_subnet_tags
  igw_tags                  = var.igw_tags
  nat_eip_tags              = var.nat_eip_tags
  vpc_tags                  = var.vpc_tags
  tags = var.tags
  #tags = local.tags # locals implementation testing using maps 

}
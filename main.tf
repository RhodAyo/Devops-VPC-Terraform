provider "aws" {
  region = "eu-west-1"
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.1.0"

  # VPC
  name = "shopnaija-vpc"
  cidr = "172.16.0.0/16"

  # AZs
  azs = ["eu-west-1a", "eu-west-1b"]

  # Subnets
  public_subnets  = ["172.16.1.0/24", "172.16.2.0/24"]
  private_subnets = ["172.16.3.0/24", "172.16.4.0/24"]
  database_subnets = ["172.16.5.0/24", "172.16.6.0/24"]

  # NAT Gateway (cost-optimized)
  enable_nat_gateway = true
  single_nat_gateway = true

  # DNS
  enable_dns_support   = true
  enable_dns_hostnames = true

  # Database subnet settings
  create_database_subnet_group = true

  tags = {
    Project = "ShopNaija"
    Environment = "dev"
  }
}
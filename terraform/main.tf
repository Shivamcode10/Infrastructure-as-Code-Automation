provider "aws" {
  region = var.region
}

# 🔹 VPC Module
module "vpc" {
  source = "./modules/vpc"

  vpc_cidr            = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
}

# 🔹 EC2 Module (NEW)
module "ec2" {
  source = "./modules/ec2"

  vpc_id           = module.vpc.vpc_id
  public_subnet_id = module.vpc.public_subnet_id
  key_name         = var.key_name
}
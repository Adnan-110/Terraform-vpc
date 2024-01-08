module "vpc"{
  # source              = "git::https://github.com/Adnan-110/Terraform-module-vpc.git"
  source                = "./vendor/modules/vpc"
  ENV                   = var.ENV
  VPC_CIDR              = var.VPC_CIDR
  PUBLIC_SUBNET_CIDR    = var.PUBLIC_SUBNET_CIDR
  PRIVATE_SUBNET_CIDR   = var.PRIVATE_SUBNET_CIDR
  AZ                    = var.AZ
}
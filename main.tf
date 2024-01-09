module "vpc"{
  # source              = "git::https://github.com/Adnan-110/Terraform-module-vpc.git"
  source                = "./vendor/modules/vpc"
  ENV                   = var.ENV
  VPC_CIDR              = var.VPC_CIDR
  PUBLIC_SUBNET_CIDR    = var.PUBLIC_SUBNET_CIDR
  PRIVATE_SUBNET_CIDR   = var.PRIVATE_SUBNET_CIDR
  AZ                    = var.AZ
  DEFAULT_VPC_CIDR      = var.DEFAULT_VPC_CIDR
  DEFAULT_VPC_ID        = var.DEFAULT_VPC_ID
  DEFAULT_VPC_RT        = var.DEFAULT_VPC_RT
}

# We cannot parameterize anything that's added in the source
# To limit that, we can use a tool called as Terrafile. All it does is that it clones the remote code from the specified branch and make it locally available.
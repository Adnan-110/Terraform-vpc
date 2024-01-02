module "vpc" {
    source = "git::https://github.com/Adnan-110/Terraform-module-vpc.git"

    VPC_CIDR = var.VPC_CIDR
}
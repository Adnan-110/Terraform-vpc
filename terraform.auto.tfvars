# Declare the values that are common to all the environments or use this terraform.auto.tfvars to consider these as variable that should nnot be overriden 

AZ                  = ["us-east-1a", "us-east-1b"]
DEFAULT_VPC_CIDR    = "172.31.0.0/16"
DEFAULT_VPC_ID      = "vpc-07dfb2010ac005d23"
DEFAULT_VPC_RT      = "rtb-0d4b4cc1d61218aea"


PUBLIC_HOSTED_ZONE_ID    = "Z02290932MY6B8I9OK9SP"
PUBLIC_HOSTED_ZONE_NAME  = "adnans-portfolio.cloud "

PRIVATE_HOSTED_ZONE_ID   = "Z0076916BR5CY6A72YNB"
PRIVATE_HOSTED_ZONE_NAME = "roboshop.internal"
aws_region   = "us-east-2"
project_name = "volt-wallet"
environment  = "prod"

vpc_cidr     = "10.0.0.0/16"
azs          = ["us-east-2a", "us-east-2b", "us-east-2c"]

public_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
app_subnets    = ["10.0.10.0/24", "10.0.11.0/24", "10.0.12.0/24"]
data_subnets   = ["10.0.20.0/24", "10.0.21.0/24", "10.0.22.0/24"]
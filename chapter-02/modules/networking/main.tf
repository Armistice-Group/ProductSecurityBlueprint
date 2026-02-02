module "vpc_internal" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.0.0"

  name = "${var.project_name}-vpc"
  cidr = var.vpc_cidr

  azs              = var.azs
  public_subnets   = var.public_subnets
  private_subnets  = var.app_subnets
  database_subnets = var.data_subnets

  # Tier 4: Egress Control Logic
  enable_nat_gateway     = true
  single_nat_gateway     = var.environment == "prod" ? false : true
  one_nat_gateway_per_az = true

  # Security: Isolate Database Tier from the Internet
  create_database_subnet_route_table     = true
  create_database_internet_gateway_route = false

  # Enable VPC Endpoints for S3 (Saves money & keeps traffic off the internet)
  enable_s3_endpoint = true
}
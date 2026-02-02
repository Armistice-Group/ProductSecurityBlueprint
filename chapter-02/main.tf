module "network_bedrock" {
  source       = "./modules/networking"
  project_name = var.project_name
  environment  = var.environment
  
  vpc_cidr     = var.vpc_cidr
  azs          = var.azs
  
  public_subnets = var.public_subnets
  app_subnets    = var.app_subnets
  data_subnets   = var.data_subnets
}
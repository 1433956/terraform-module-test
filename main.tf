module "vpc" {
  source = "../terraform-aws-vpc"
  project = var.project
  environment = var.environment
  public_subnet_cidrs = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  database_subnet_cidrs = var.database_subnet_cidrs
  is_peering_required = true
}
/* 
output "zones" {
  value = module.vpc.zones
} */
/* 
output "default_vpc" {
  value = module.vpc.default_vpc.id
}  */
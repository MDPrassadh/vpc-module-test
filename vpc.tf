# module "vpc" {
#     source = "../terraform-aws-vpc"


# }

# for this this error got variable values are not passed to module.
# variable values supply responsiblity is of the caller module.
# So we need to pass variable values to module from caller module.  

# to pass variable values to module we need to use variable name and variable value in module block.
module "vpc" {
  source = "../03 terraform-aws-vpc" # customise vpc module source path as per your project structure.
  project_name = var.project_name
  environment  = var.environment
  vpc_cidr     = var.vpc_cidr
  common_tags  = var.common_tags
  public_subnets_cidrs = var.public_subnets_cidrs
  private_subnets_cidrs = var.private_subnets_cidrs
  database_subnets_cidrs = var.database_subnets_cidrs
  is_peering_required = var.is_peering_required
}

 
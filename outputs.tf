output "vpc_id" {
  description = "The ID of the VPC"
  # The value of the output is set to the ID of the VPC resource created in the module.
  value = module.vpc.vpc_id
}

# output block to get the IDs of the public subnets as output from module.
output "public_subnet_ids" {
  description = "The IDs of the public subnets"
  # The value of the output is set to the list of IDs of the public subnet resources created in the module.
  value = module.vpc.public_subnet_ids
}
output "private_subnet_ids" {
  description = "The IDs of the private subnets"
  # The value of the output is set to the list of IDs of the private subnet resources created in the module.
  value = module.vpc.private_subnet_ids
} 
output "database_subnet_ids" {
  description = "The IDs of the database subnets"
  # The value of the output is set to the list of IDs of the database subnet resources created in the module.
  value = module.vpc.database_subnet_ids
}

# if you want to get availability zones information, default vpc information and main route table information as output from module then you can uncomment below output blocks and use them in your project.

# output block to get availability zones information as output from module.

# output "az_info" {
#   description = "The availability zones available in the region"
#   # The value of the output is set to the availability zones data source in the module.
#   value = module.vpc.az_info
# } 
# output "default_vpc_info" {
#   description = "The ID of the default VPC in the region"
#   # The value of the output is set to the default VPC data source in the module.
#   value = module.vpc.default_vpc_info
# }

  
# output "main_route_table_info" {
#   description = "The ID of the main route table associated with the default VPC"
#   # The value of the output is set to the main route table data source in the module.
#   value = module.vpc.main_route_table_info
# }
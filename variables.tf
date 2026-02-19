variable "project_name" {
  description = "The name of the project"
  type        = string
  default     = "expense"
}

variable "environment" { 
  description = "The environment name (e.g., dev, staging, prod)"
  type        = string
  default     = "dev"
}
variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}
# Optional -----------------------
variable "common_tags" { # to specify common tags that can be applied to all resources in the module, we are using a variable of type map(string) which allows us to provide key-value pairs of tags in a map format.
  description = "A map of tags to apply to all resources"
  type        = map(string)  # to specify the type of the variable as a map with string keys and string values.
  default = {
    "Owner"     = "prassadh",
    "project"   = "expense",
    "Terraform" = "true",
    "Environment" = "dev"
  }
}

variable "public_subnets_cidrs" { # to specify the CIDR blocks for the public subnets, we are using a variable of type list(string) which allows us to provide multiple CIDR blocks in a list format.
  description = "A list of CIDR blocks for the public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"] # to specify the default CIDR blocks for the public subnets, we are using a list of CIDR blocks with two entries, one for each public subnet.
}

variable "private_subnets_cidrs" { # to specify the CIDR blocks for the private subnets, we are using a variable of type list(string) which allows us to provide multiple CIDR blocks in a list format.
  description = "A list of CIDR blocks for the private subnets"
  type        = list(string)
  default     = ["10.0.11.0/24", "10.0.12.0/24"] # to specify the default CIDR blocks for the private subnets, we are using a list of CIDR blocks with two entries, one for each private subnet.
}
variable "database_subnets_cidrs" { # to specify the CIDR blocks for the database subnets, we are using a variable of type list(string) which allows us to provide multiple CIDR blocks in a list format.
  description = "A list of CIDR blocks for the database subnets"
  type        = list(string)
  default     = ["10.0.21.0/24", "10.0.22.0/24"] # to specify the default CIDR blocks for the database subnets, we are using a list of CIDR blocks with two entries, one for each database subnet.
}
variable "database_subnet_group_tags" { # to specify tags for the database subnet group resource, we are using a variable of type map(string) which allows us to provide key-value pairs of tags in a map format.
  description = "A map of tags to apply to the database subnet group resource"
  type        = map(string)
  default     = {
    "Owner"     = "prassadh",
    "project"   = "expense",
    "Terraform" = "true",
    "Environment" = "dev"
  }
}
variable "is_peering_required" {
  default = true
  type    = bool
  description = "Whether VPC peering is required or not"
  
}
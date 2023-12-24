output "vpc_id" {
  description = "The ID of VPC"
  value       = module.vpc.vpc_id
}

output "private_subnets_ids" {
  description = "Private Subnets IDs"
  value       = module.vpc.private_subnets
}

output "securitygroup_id" {
  description = "Security Group ID"
  value       = module.vpc.default_security_group_id
}

output "subnet_id" {
  description = "Subnet ID"
  value       = module.vpc.public_subnets
}
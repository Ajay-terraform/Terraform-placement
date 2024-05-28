output "roles" {
  value = iam.role_name
}

output "vpc_id" {
  value = vpc.vpc_id
}

output "subnet_id" {
  value = vpc.public_subnet_id
}

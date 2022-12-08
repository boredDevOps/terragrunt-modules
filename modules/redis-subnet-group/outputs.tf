output "name" {
  description = "Redis subnet name"
  value       = aws_elasticache_subnet_group.redis_subnet_group.name
}

output "subnet_ids" {
  description = "Redis subnet id"
  value       = aws_elasticache_subnet_group.redis_subnet_group.subnet_ids
}

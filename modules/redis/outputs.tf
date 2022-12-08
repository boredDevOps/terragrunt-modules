output "cluster_id" {
  description = "Cluster name"
  value       = aws_elasticache_cluster.redis.cluster_id
}

output "engine" {
  description = "Engine type"
  value       = aws_elasticache_cluster.redis.engine
}

output "node_type" {
  description = "Node type"
  value       = aws_elasticache_cluster.redis.node_type
}

output "num_cache_nodes" {
  description = "Nodes"
  value       = aws_elasticache_cluster.redis.num_cache_nodes
}

output "parameter_group_name" {
  description = "Parameter group name"
  value       = aws_elasticache_cluster.redis.parameter_group_name
}

output "engine_version" {
  description = "Engine version"
  value       = aws_elasticache_cluster.redis.engine_version
}

output "port" {
  description = "Redis port"
  value       = aws_elasticache_cluster.redis.port
}

output "security_group_ids" {
  description = "Redis port"
  value       = aws_elasticache_cluster.redis.security_group_ids
}

output "snapshot_retention_limit" {
  description = "Snapshot limit"
  value       = aws_elasticache_cluster.redis.snapshot_retention_limit
}

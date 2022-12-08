terraform {
  required_version = ">= 0.13.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.7"
    }
  }
}

resource "aws_elasticache_cluster" "redis" {
  cluster_id               = var.cluster_id
  engine                   = var.engine
  node_type                = var.node_type
  num_cache_nodes          = var.num_cache_nodes
  parameter_group_name     = var.parameter_group_name
  engine_version           = var.engine_version
  port                     = var.port
  subnet_group_name        = var.subnet_group_name
  security_group_ids       = var.security_group_ids
  snapshot_retention_limit = var.snapshot_retention_limit
}

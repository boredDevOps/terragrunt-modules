terraform {
  required_version = ">= 0.13.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.7"
    }
  }
}

resource "aws_elasticache_subnet_group" "redis_subnet_group" {
  name       = var.name
  subnet_ids = var.subnet_ids

}

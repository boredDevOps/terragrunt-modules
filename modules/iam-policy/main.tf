terraform {
  required_version = ">= 0.13.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.7"
    }
  }
}

resource "aws_iam_policy" "policy" {

  name        = var.name
  path        = var.path
  description = var.description
  policy      = var.policy
  tags        = var.tags
}

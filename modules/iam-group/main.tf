terraform {
  required_version = ">= 0.13.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.7"
    }
  }
}

resource "aws_iam_group" "DevopsEC2NotTerminatePermission" {
  name = "DevopsAWSTerminatePermission"
  path = "/users/"
}

resource "aws_iam_group_policy_attachment" "test-attach" {
  group      = aws_iam_group.DevopsEC2NotTerminatePermission.name
  policy_arn = var.policy_arn
}

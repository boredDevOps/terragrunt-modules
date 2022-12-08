output "id" {
  description = "The policy's ID"
  value       = try(aws_iam_group_policy_attachment.test-attach.group, "")
}

output "arn" {
  description = "The ARN assigned by AWS to this policy"
  value       = try(aws_iam_group_policy_attachment.test-attach.policy_arn, "")
}

output "name" {
  value = aws_s3_bucket.bucket.id
}


output "arn" {
  description = "The ARN assigned by AWS to this policy"
  value       = aws_s3_bucket.bucket.arn
}

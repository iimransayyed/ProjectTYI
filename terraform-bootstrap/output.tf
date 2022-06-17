output "s3_bucket_arn" {
  description = "arn of the bucket"  
  value = aws_s3_bucket.terraform_state.arn
}
output "s3_bucket_id" {
  description = "S3 Bucket ID"  
  value = aws_s3_bucket.terraform_state.id
}

output "s3_log_bucket_arn" {
  description = "arn of the bucket"  
  value = aws_s3_bucket.log_bucket.arn
}
output "s3_log_bucket_id" {
  description = "S3 Bucket ID"  
  value = aws_s3_bucket.log_bucket.id
}
output "table_id" {
  value       = join("", aws_dynamodb_table.terraform-lock.*.id)
  description = "DynamoDB table ID"
}
output "table_arn" {
  value       = join("", aws_dynamodb_table.terraform-lock.*.arn)
  description = "DynamoDB table ARN"
}
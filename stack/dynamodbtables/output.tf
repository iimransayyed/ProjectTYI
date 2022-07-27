output "ddb_table_arn" {
  description = "arn of the resource"
  value       = aws_dynamodb_table.EasySurvey.arn
}
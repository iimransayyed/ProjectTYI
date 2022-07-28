output "lambda_iam_arn" {
  description = "arn of the resource"
  value       = aws_iam_role.lambda_iam.arn
}

output "EasySurvey_lambda_arn" {
  description = "arn of the resource"
  value       = aws_lambda_function.EasySurvey_lambda.arn
}

output "EasySurvey_lambda_cw_logs_arn" {
  description = "arn of the resource"
  value       = aws_cloudwatch_log_group.EasySurvey_lambda_cw_logs.arn
}
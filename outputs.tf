output "arn" {
  value       = aws_lambda_function.this.arn
  description = "Lambda ARN"
}

output "arn_version" {
  value       = aws_lambda_function.this.version
  description = "Lambda Version"
}

output "name" {
  value       = aws_lambda_function.this.function_name
  description = "Lambda Name"
}

output "cloudwatch_logs_arn" {
  value = aws_cloudwatch_log_group.this.name
}


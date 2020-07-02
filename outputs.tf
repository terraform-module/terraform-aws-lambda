output "arn" {
  description = "Lambda ARN"
  value       = aws_lambda_function.this.arn
}

output "version" {
  description = "Lambda Version"
  value       = aws_lambda_function.this.version
}

output "name" {
  description = "Lambda Name"
  value       = aws_lambda_function.this.function_name
}

output "invoke_arn" {
  description = "ARN to invoke the lambda method"
  value       = aws_lambda_function.this.invoke_arn
}

output "cloudwatch_logs_arn" {
  description = "The arn of theh log group."
  value       = aws_cloudwatch_log_group.this.arn
}

output "cloudwatch_logs_name" {
  description = "The name of the log group."
  value       = aws_cloudwatch_log_group.this.name
}


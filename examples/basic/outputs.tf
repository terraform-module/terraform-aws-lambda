output "lambda_arn" {
  description = "Endpoint for EKS control plane."
  value       = module.lambda.arn
}

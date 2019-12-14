resource aws_lambda_function this {
  function_name                  = format("%s", var.function_name)
  filename                       = var.filename
  description                    = var.description
  role                           = var.role_arn
  handler                        = var.handler
  runtime                        = var.runtime
  publish                        = var.publish
  memory_size                    = var.memory_size
  reserved_concurrent_executions = var.concurrency
  timeout                        = var.lambda_timeout
  tags                           = var.tags

  dynamic "vpc_config" {
    for_each = var.vpc_config == null ? [] : [var.vpc_config]
    content {
      security_group_ids = vpc_config.value.security_group_ids
      subnet_ids         = vpc_config.value.subnet_ids
    }
  }

  dynamic "environment" {
    for_each = var.environment == null ? [] : [var.environment]
    content {
      variables = var.environment
    }
  }

  lifecycle {
    ignore_changes = [
      filename,
      publish,
      last_modified,
      version,
      qualified_arn,
    ]
  }

  depends_on = [aws_cloudwatch_log_group.this]
}

# Cloud watch
resource aws_cloudwatch_log_group this {
  name              = format("/aws/lambda/%s", var.function_name)
  retention_in_days = var.log_retention

  tags = merge(var.tags,
    { Function = format("%s", var.function_name) }
  )
}

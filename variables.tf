variable "function_name" {
  description = "A unique name for your Lambda Function."
  type        = string
}
variable "filename" {
  description = "The path to the function's deployment package within the local filesystem. If defined. No S3 support"
  type        = string
}
variable "description" {
  description = "Description of what your Lambda Function does."
  type        = string
}
variable "runtime" {
  description = "See Runtimes for valid values."
  type        = string
}
variable "handler" {
  description = "The function entrypoint in your code."
  type        = string
}
variable "memory_size" {
  description = "Amount of memory in MB your Lambda Function can use at runtime. Defaults to 128."
  type        = number
}
variable "concurrency" {
  description = "The amount of reserved concurrent executions for this lambda function. A value of 0 disables lambda from being triggered and -1 removes any concurrency limitations. "
  type        = number
}
variable "lambda_timeout" {
  default     = 5
  description = "The amount of time your Lambda Function has to run in seconds. Defaults to 5"
  type        = number
}
variable "role_arn" {
  description = "IAM role attached to the Lambda Function. This governs both who / what can invoke your Lambda Function, as well as what resources our Lambda Function has access to."
  type        = string
}

variable "tags" {
  default     = {}
  description = "A mapping of tags to assign to the object."
  type        = map
}

variable "vpc_config" {
  default     = null
  description = "Provide this to allow your function to access your VPC. Fields documented below. See Lambda in VPC."
  type = object({
    security_group_ids = list(string)
    subnet_ids         = list(string)
  })
}

variable "file_system_config" {
  default     = null
  description = "Provide this to allow your function to mount your EFS file system. Fields documented below. See Lambda with EFS."
  type = object({
    efs_access_point_arn = string
    local_mount_path     = string
  })
}

variable "tracing_config" {
  default     = null
  description = "Use AWS X-Ray to collect data about events that your function processes, and to identify the cause of errors in your serverless applications. Can be either PassThrough or Active."
  type = object({
    mode = string
  })
}

variable "environment" {
  default     = null
  description = "The Lambda environment's configuration settings."
  type        = map(string)
}

variable "publish" {
  default     = true
  description = "Whether to publish creation/change as new Lambda Function Version. Defaults to true."
  type        = bool
}

variable "log_retention" {
  default     = 1
  description = "Specifies the number of days you want to retain log events in the specified log group."
  type        = number
}

variable "event_age_in_seconds" {
  default     = 100
  description = "Maximum age of a request that Lambda sends to a function for processing in seconds. Valid values between 60 and 21600."
  type        = number
}

variable "retry_attempts" {
  default     = 0
  description = "Maximum number of times to retry when the function returns an error. Valid values between 0 and 2. Defaults to 0."
  type        = number
}

variable "source_code_hash" {
  default     = null
  description = "Used to trigger updates when file contents change.  Must be set to a base64-encoded SHA256 hash of the package file specified with either filename or s3_key."
  type        = string
}

variable "layers" {
  default     = null
  description = "List of Lambda Layer Version ARNs (maximum of 5) to attach to your Lambda Function"
  type        = list(string)
}

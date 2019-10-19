variable "function_name" {
  type = string
}
variable "filename" {
  type = string
}
variable "description" {
  type = string
}
variable "runtime" {
  type = string
}
variable "handler" {
  type = string
}
variable "memory_size" {
  type = number
}
variable "concurrency" {
  type = number
}
variable "lambda_timeout" {
  type = number
}
variable "role_arn" {
  type = string
}

variable "tags" {
  type    = map
  default = {}
}

variable "vpc_config" {
  type = object({
    security_group_ids = list(string)
    subnet_ids         = list(string)
  })
  default = null
}

variable "environment" {
  type    = map(string)
  default = null
}

variable "publish" {
  type    = bool
  default = true
}

variable "log_retention" {
  default = 1
}

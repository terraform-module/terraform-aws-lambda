variable "region" {
  default = "us-west-2"
}
variable "full_name" {
  default = "example"
}

locals {

  lambda_env_vars = {
    NODE_ENV                 = "production"
    AWS_XRAY_CONTEXT_MISSING = "LOG_ERROR"
  }

}
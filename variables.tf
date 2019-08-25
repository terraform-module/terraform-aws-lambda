variable environment {}
variable function_name {}
variable filename {}
variable description {}
variable runtime {}
variable handler {}
variable memory_size {}
variable concurrency {}
variable lambda_timeout {}
variable role_arn {}

variable tags {
  type = "map"
}

variable subnet_ids {
  default = []
}

variable security_group_ids {
  default = []
}

variable environment_vars {
  type    = "map"
  default = {}
}

variable publish {
  default = true
}
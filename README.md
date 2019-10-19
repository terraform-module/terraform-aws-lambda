# AWS Lambda VPC

Deploy Lambda into VPC

## Usage example

Here's the gist of using it via github.

```terraform
module lambda {
  source = "github.com/terraform-module/terraform-aws-lambda-vpc?ref=v2.4.0"

  function_name      = "lambda-to-deploy"
  filename           = "${path.module}/lambda.zip"
  description        = "description should be here"
  handler            = "index.handler"
  runtime            = "nodejs10.x"
  memory_size        = "128"
  concurrency        = "5"
  lambda_timeout     = "20"
  log_retention      = "1"
  role_arn           = "some-role-arn"

  vpc_config = {
    subnet_ids         = ["sb-q53asdfasdfasdf", "sf-3asdfasdfasdf6"]
    security_group_ids = ["sg-3asdfadsfasdfas"]
  }

  environment_vars = {
    Environment = "test"
  }

  tags = {
    Environment = "test"
  }
}
```

## Module Variables

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| concurrency |  | number | n/a | yes |
| description |  | string | n/a | yes |
| environment |  | map(string) | `"null"` | no |
| filename |  | string | n/a | yes |
| function\_name |  | string | n/a | yes |
| handler |  | string | n/a | yes |
| lambda\_timeout |  | number | n/a | yes |
| log\_retention |  | string | `"1"` | no |
| memory\_size |  | number | n/a | yes |
| publish |  | bool | `"true"` | no |
| role\_arn |  | string | n/a | yes |
| runtime |  | string | n/a | yes |
| tags |  | map | `{}` | no |
| vpc\_config |  | object | `"null"` | no |

## Outputs

| Name | Description |
|------|-------------|
| arn | Lambda ARN |
| cloudwatch\_logs\_arn |  |
| name | Lambda Name |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Commands

<!-- START makefile-doc -->

```
$ make help
hooks                          Commit hooks setup
validate                       Validate with pre-commit hooks
changelog                      Update changelog
release                        Create release version
```

<!-- END makefile-doc -->

## How to Contribute

Submit a pull request

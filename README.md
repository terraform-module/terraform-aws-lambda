# AWS Lambda VPC

Deploy Lambda into VPC

## Usage example

Here's the gist of using it via github.

```terraform
module trigger_transcoder {
  source = "github.com/terraform-module/terraform-aws-lambda-vpc?ref=v2.0.0"

  function_name      = "lambda-to-deploy"
  filename           = "${path.module}/lambda.zip"
  description        = "Trigger Transcoder"
  handler            = "index.handler"
  runtime            = "nodejs10.x"
  memory_size        = "128"
  concurrency        = "5"
  lambda_timeout     = "20"
  log_retention      = "1"
  role_arn           = "some-role-arn"
  subnet_ids         = ["sb-q534562346", "sf-34534236"]
  security_group_ids = ["sg-3450398534967"]

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

| Name               | Description |     Type     | Default  | Required |
| ------------------ | ----------- | :----------: | :------: | :------: |
| concurrency        |             |    number    |   n/a    |   yes    |
| description        |             |    string    |   n/a    |   yes    |
| environment_vars   |             |     map      |   `{}`   |    no    |
| filename           |             |    string    |   n/a    |   yes    |
| function_name      |             |    string    |   n/a    |   yes    |
| handler            |             |    string    |   n/a    |   yes    |
| lambda_timeout     |             |    number    |   n/a    |   yes    |
| log_retention      |             |    string    |  `"1"`   |    no    |
| memory_size        |             |    number    |   n/a    |   yes    |
| publish            |             |     bool     | `"true"` |    no    |
| role_arn           |             |    string    |   n/a    |   yes    |
| runtime            |             |    string    |   n/a    |   yes    |
| security_group_ids |             | list(string) |   `[]`   |    no    |
| subnet_ids         |             | list(string) |   `[]`   |    no    |
| tags               |             |     map      |   `{}`   |    no    |

## Outputs

| Name                | Description |
| ------------------- | ----------- |
| arn                 | Lambda ARN  |
| cloudwatch_logs_arn |             |
| name                | Lambda Name |

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

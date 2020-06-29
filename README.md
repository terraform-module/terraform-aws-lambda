# AWS Lambda

Deploy Lambda into VPC or outside of the vpc

[![](https://img.shields.io/github/license/terraform-module/terraform-aws-lambda)](https://github.com/terraform-module/terraform-aws-lambda)
![](https://img.shields.io/github/v/tag/terraform-module/terraform-aws-lambda)
[![](https://img.shields.io/github/workflow/status/terraform-module/terraform-aws-lambda/validator/master)](https://github.com/terraform-module/terraform-aws-lambda/actions?query=is%3Acompleted)
![](https://github.com/terraform-module/terraform-aws-lambda/workflows/Validator/badge.svg)
![](https://img.shields.io/issues/github/terraform-module/terraform-aws-lambda)
![](https://img.shields.io/github/issues/terraform-module/terraform-aws-lambda)
![](https://img.shields.io/github/issues-closed/terraform-module/terraform-aws-lambda)
[![](https://img.shields.io/github/languages/code-size/terraform-module/terraform-aws-lambda)](https://github.com/terraform-module/terraform-aws-lambda)
[![](https://img.shields.io/github/repo-size/terraform-module/terraform-aws-lambda)](https://github.com/terraform-module/terraform-aws-lambda)
![](https://img.shields.io/github/languages/top/terraform-module/terraform-aws-lambda?color=green&logo=terraform&logoColor=blue)
![](https://img.shields.io/github/commit-activity/m/terraform-module/terraform-aws-lambda)
![](https://img.shields.io/github/contributors/terraform-module/terraform-aws-lambda)
![](https://img.shields.io/github/last-commit/terraform-module/terraform-aws-lambda)

## Usage example

Here's the gist of using it via github.

```terraform
module lambda {
  source  = "terraform-module/lambda/aws"
  version = "2.10.0"

  function_name      = "lambda-name-to-deploy"
  filename            = "${path.module}/lambda.zip"
  description        = "description should be here"
  handler            = "index.handler"
  runtime            = "nodejs12.x"
  memory_size        = "128"
  concurrency        = "5"
  lambda_timeout     = "20"
  log_retention      = "1"
  role_arn           = "some-role-arn"
  tracing_config      = { mode = "Active" }

  vpc_config = {
    subnet_ids         = ["sb-q53asdfasdfasdf", "sf-3asdfasdfasdf6"]
    security_group_ids = ["sg-3asdfadsfasdfas"]
  }

  environment = {
    Environment = "test"
  }

  tags = {
    Environment = "test"
  }
}
```

## Module Variables

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.9 |
| aws | >= 2.5 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 2.5 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| concurrency | The amount of reserved concurrent executions for this lambda function. A value of 0 disables lambda from being triggered and -1 removes any concurrency limitations. | `number` | n/a | yes |
| description | Description of what your Lambda Function does. | `string` | n/a | yes |
| environment | The Lambda environment's configuration settings. | `map(string)` | `null` | no |
| event\_age\_in\_seconds | Maximum age of a request that Lambda sends to a function for processing in seconds. Valid values between 60 and 21600. | `number` | `100` | no |
| filename | The path to the function's deployment package within the local filesystem. If defined. No S3 support | `string` | n/a | yes |
| function\_name | A unique name for your Lambda Function. | `string` | n/a | yes |
| handler | The function entrypoint in your code. | `string` | n/a | yes |
| lambda\_timeout | The amount of time your Lambda Function has to run in seconds. Defaults to 5 | `number` | `5` | no |
| layers | List of Lambda Layer Version ARNs (maximum of 5) to attach to your Lambda Function | `list(string)` | `null` | no |
| log\_retention | Specifies the number of days you want to retain log events in the specified log group. | `number` | `1` | no |
| memory\_size | Amount of memory in MB your Lambda Function can use at runtime. Defaults to 128. | `number` | n/a | yes |
| publish | Whether to publish creation/change as new Lambda Function Version. Defaults to true. | `bool` | `true` | no |
| retry\_attempts | Maximum number of times to retry when the function returns an error. Valid values between 0 and 2. Defaults to 2. | `number` | `0` | no |
| role\_arn | IAM role attached to the Lambda Function. This governs both who / what can invoke your Lambda Function, as well as what resources our Lambda Function has access to. | `string` | n/a | yes |
| runtime | See Runtimes for valid values. | `string` | n/a | yes |
| source\_code\_hash | Used to trigger updates when file contents change.  Must be set to a base64-encoded SHA256 hash of the package file specified with either filename or s3\_key. | `string` | `null` | no |
| tags | A mapping of tags to assign to the object. | `map` | `{}` | no |
| tracing\_config | Use AWS X-Ray to collect data about events that your function processes, and to identify the cause of errors in your serverless applications. Can be either PassThrough or Active. | <pre>object({<br>    mode = string<br>  })</pre> | `null` | no |
| vpc\_config | Provide this to allow your function to access your VPC. Fields documented below. See Lambda in VPC. | <pre>object({<br>    security_group_ids = list(string)<br>    subnet_ids         = list(string)<br>  })</pre> | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| arn | Lambda ARN |
| cloudwatch\_logs\_arn | cloudwatch logs AWS ARN |
| invoke\_arn | ARN to invoke the lambda method |
| name | Lambda Name |
| version | Lambda Version |

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

### :memo: Guidelines

 - :memo: Use a succinct title and description.
 - :bug: Bugs & feature requests can be be opened
 - :signal_strength: Support questions are better asked on [Stack Overflow](https://stackoverflow.com/)
 - :blush: Be nice, civil and polite ([as always](http://contributor-covenant.org/version/1/4/)).

## License

Copyright 2019 Ivan Katliarhcuk

MIT Licensed. See [LICENSE](./LICENSE) for full details.

## How to Contribute

Submit a pull request

# Authors

Currently maintained by [Ivan Katliarchuk](https://github.com/ivankatliarchuk) and these [awesome contributors](https://github.com/terraform-module/terraform-module-blueprint/graphs/contributors).

[![ForTheBadge uses-git](http://ForTheBadge.com/images/badges/uses-git.svg)](https://GitHub.com/)

## Terraform Registry

- [Module](https://registry.terraform.io/modules/terraform-module/lambda/aws)

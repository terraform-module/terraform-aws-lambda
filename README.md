## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| concurrency | The amount of reserved concurrent executions for this lambda function. A value of 0 disables lambda from being triggered and -1 removes any concurrency limitations. | `number` | n/a | yes |
| description | Description of what your Lambda Function does. | `string` | n/a | yes |
| environment | The Lambda environment's configuration settings. | `map(string)` | n/a | yes |
| event\_age\_in\_seconds | Maximum age of a request that Lambda sends to a function for processing in seconds. Valid values between 60 and 21600. | `number` | `100` | no |
| filename | The path to the function's deployment package within the local filesystem. If defined. No S3 support | `string` | n/a | yes |
| function\_name | A unique name for your Lambda Function. | `string` | n/a | yes |
| handler | The function entrypoint in your code. | `string` | n/a | yes |
| lambda\_timeout | The amount of time your Lambda Function has to run in seconds. Defaults to 5 | `number` | `5` | no |
| log\_retention | Specifies the number of days you want to retain log events in the specified log group. | `number` | `1` | no |
| memory\_size | Amount of memory in MB your Lambda Function can use at runtime. Defaults to 128. | `number` | n/a | yes |
| publish | Whether to publish creation/change as new Lambda Function Version. Defaults to true. | `bool` | `true` | no |
| retry\_attempts | Maximum number of times to retry when the function returns an error. Valid values between 0 and 2. Defaults to 2. | `number` | `0` | no |
| role\_arn | IAM role attached to the Lambda Function. This governs both who / what can invoke your Lambda Function, as well as what resources our Lambda Function has access to. | `string` | n/a | yes |
| runtime | See Runtimes for valid values. | `string` | n/a | yes |
| source\_code\_hash | Used to trigger updates when file contents change.  Must be set to a base64-encoded SHA256 hash of the package file specified with either filename or s3\_key. | `string` | n/a | yes |
| tags | A mapping of tags to assign to the object. | `map` | `{}` | no |
| tracing\_config | Use AWS X-Ray to collect data about events that your function processes, and to identify the cause of errors in your serverless applications. Can be either PassThrough or Active. | <pre>object({<br>    mode = string<br>  })</pre> | n/a | yes |
| vpc\_config | Provide this to allow your function to access your VPC. Fields documented below. See Lambda in VPC. | <pre>object({<br>    security_group_ids = list(string)<br>    subnet_ids         = list(string)<br>  })</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| arn | Lambda ARN |
| cloudwatch\_logs\_arn | n/a |
| name | Lambda Name |
| version | Lambda Version |

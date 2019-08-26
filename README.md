# AWS Lambda VPC

Deploy Lambda into VPC

## Usage example

Here's the gist of using it via github.

```terraform

```

## Module Variables

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| concurrency |  | number | n/a | yes |
| description |  | string | n/a | yes |
| environment\_vars |  | map | `{}` | no |
| filename |  | string | n/a | yes |
| function\_name |  | string | n/a | yes |
| handler |  | string | n/a | yes |
| lambda\_timeout |  | number | n/a | yes |
| log\_retention |  | string | `"1"` | no |
| memory\_size |  | number | n/a | yes |
| publish |  | bool | `"true"` | no |
| role\_arn |  | string | n/a | yes |
| runtime |  | string | n/a | yes |
| security\_group\_ids |  | list(string) | `[]` | no |
| subnet\_ids |  | list(string) | `[]` | no |
| tags |  | map | `{}` | no |

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

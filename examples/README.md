# Examples

These serve a few purposes:

1.  Shows developers how to use the module in a straightforward way as integrated with other terraform community supported modules.
2.  Serves as the test infrastructure for CI on the project.
3.  Provides a simple way to play with the Kubernetes cluster you create.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| archive | n/a |
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| full\_name | n/a | `string` | `"example"` | no |
| region | n/a | `string` | `"us-west-2"` | no |

## Outputs

| Name | Description |
|------|-------------|
| lambda\_arn | ARN of the given lambda. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
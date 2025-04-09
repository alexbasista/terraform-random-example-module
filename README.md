# terraform-random-example-module

Example Terraform module properly structured for publishing to the Terraform Registry (public or private). This module creates a [`random_pet`](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/pet) resource.

## Usage

```hcl
module "example_module" {
  source = "../.."

  pet_length     = 3
  pet_prefix     = "test"
  pet_separator  = "-"
  trigger_change = null
}
```

---

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_random"></a> [random](#requirement\_random) | ~> 3.7 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_random"></a> [random](#provider\_random) | ~> 3.7 |

## Resources

| Name | Type |
|------|------|
| [random_pet.example](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/pet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_pet_length"></a> [pet\_length](#input\_pet\_length) | The length (in words) of the pet name. | `number` | `2` | no |
| <a name="input_pet_prefix"></a> [pet\_prefix](#input\_pet\_prefix) | A string to prefix the pet name with. | `string` | `null` | no |
| <a name="input_pet_separator"></a> [pet\_separator](#input\_pet\_separator) | The character to separate words in the pet name with. | `string` | `"-"` | no |
| <a name="input_trigger_change"></a> [trigger\_change](#input\_trigger\_change) | A value that will trigger recreation of the resource when changed. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_random_pet_id"></a> [random\_pet\_id](#output\_random\_pet\_id) | ID (name) of the random pet. |
<!-- END_TF_DOCS -->
# Usage Example 2

Example of calling this module with the `count` meta-argument.

## Usage

```hcl
module "example_module" {
  count  = 8
  source = "../.."


  pet_length     = var.pet_length
  pet_prefix     = var.pet_prefix
  pet_separator  = var.pet_separator
  trigger_change = var.trigger_change
}
```
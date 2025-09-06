# Integration test

This integration test contains a root Terraform configuration that simulates how a consumer would use this module.  It uses a CLI-driven remote run workflow approach with a Terraform Cloud or Terraform Enterprise workspace rather than the `terraform test`, providing a more realistic testing environment.

```hcl
module "example_module" {
  source = "../.."

  pet_length = var.pet_length
  pet_prefix = var.pet_prefix
}
```

The module source references the local repository root (`../..`) to test the current development version directly.
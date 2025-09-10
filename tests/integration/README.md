# Integration test

This integration test directory contains a root Terraform configuration that simulates how a consumer would use this module.  It uses the [CLI-driven remote run workflow](https://developer.hashicorp.com/terraform/cloud-docs/run/cli) approach with a Terraform Cloud or Terraform Enterprise workspace rather than `terraform test`, providing a more realistic testing environment.

Benefits to this approach include:

- Integration test runs on the same agent that executes normal Terraform runs (in TFC/TFE)
- Policy checks (Sentinel or OPA) can be incorporate via the remote workspace
- Other workspace features such as variable sets or agent pools can be incorporated via the remote workspace
- Run history and logs are preserved in the workspace for troubleshooting or audit

```hcl
module "example_module" {
  source = "../.."

  # Module inputs would be specified here
}
```

The module source references the local repository root (`../..`) to test the current development version directly.
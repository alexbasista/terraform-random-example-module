terraform {
  cloud {
    organization = "abasista-tfc"

    workspaces {
      name    = "random-example-module-test-2"
      project = "tf-module-ci"
    }
  }
}
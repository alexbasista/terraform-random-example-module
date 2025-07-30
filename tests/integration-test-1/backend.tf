terraform {
  cloud {
    organization = "abasista-tfc"

    workspaces {
      name    = "random-example-module-test-1"
      project = "tf-module-ci"
    }
  }
}
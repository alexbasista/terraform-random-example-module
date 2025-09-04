terraform {
  cloud {
    organization = "abasista-tfc"

    workspaces {
      name    = "random-example-module-test"
      project = "tf-module-ci"
    }
  }
}
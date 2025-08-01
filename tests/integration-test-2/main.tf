terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.7"
    }
  }
}

module "example_module" {
  source = "../.."

  pet_length     = var.pet_length
  pet_prefix     = var.pet_prefix
  #pet_separator  = var.pet_separator
  #trigger_change = var.trigger_change
}
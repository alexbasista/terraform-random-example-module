resource "random_pet" "example_1" {
  length    = var.pet_length
  prefix    = var.pet_prefix
  separator = var.pet_separator

  keepers = {
    trigger_change = var.trigger_change
  }
}

resource "random_pet" "example_2" {
  length    = var.pet_length
  prefix    = var.pet_prefix
  separator = var.pet_separator

  keepers = {
    trigger_change = var.trigger_change
  }
}

resource "random_pet" "example_3" {
  length    = var.pet_length
  prefix    = var.pet_prefix
  separator = var.pet_separator

  keepers = {
    trigger_change = var.trigger_change
  }
}
resource "random_pet" "example" {
  length    = var.pet_length
  prefix    = var.pet_prefix
  separator = var.pet_separator

  keepers = {
    trigger_change = var.trigger_change
  }
}
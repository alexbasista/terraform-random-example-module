module "example_module" {
  count   = 8
  source  = "<TFCE_HOSTNAME>/<ORGANIZATION_NAME>/example-module/random"
  version = "x.x.x"

  pet_length     = var.pet_length
  pet_prefix     = var.pet_prefix
  pet_separator  = var.pet_separator
  trigger_change = var.trigger_change
}
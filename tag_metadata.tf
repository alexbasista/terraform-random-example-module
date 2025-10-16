module "tags_metadata" {
  source  = "app.terraform.io/abasista-tfc/module-metadata-tags/random"
  version = "3.1.0"
  
  caller_module_path = path.module
}

output "debug_module_metadata" {
    value = module.tags_metadata.debug
}
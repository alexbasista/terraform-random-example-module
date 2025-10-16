module "module_metadata_tags" {
  source  = "app.terraform.io/abasista-tfc/module-metadata-tags/random"
  version = "3.2.0"
  
  caller_module_path = path.module
}

output "debug_module_metadata_tags" {
    value = module.tags_metadata.debug
}
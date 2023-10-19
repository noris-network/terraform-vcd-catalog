data "vcd_storage_profile" "storage_profile" {
  name = var.storage_profile_name
  org  = var.vdc_org_name
  vdc  = var.vdc_name
}

resource "vcd_catalog" "catalog" {
  org                           = var.vdc_org_name
  name                          = var.name
  description                   = var.description
  storage_profile_id            = data.vcd_storage_profile.storage_profile.id
  delete_recursive              = var.delete_recursive
  delete_force                  = var.delete_force
  cache_enabled                 = var.cache_enabled
  password                      = var.password
  preserve_identity_information = var.preserve_identity_information
  publish_enabled               = var.publish_enabled

  dynamic "metadata_entry" {
    for_each = length(var.metadata_entry) > 0 ? var.metadata_entry : []
    content {
      key         = metadata_entry.value.key
      value       = metadata_entry.value.value
      type        = metadata_entry.value.type
      user_access = metadata_entry.value.user_access
      is_system   = metadata_entry.value.is_system
    }
  }
}

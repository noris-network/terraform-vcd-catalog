variable "vdc_org_name" {
  description = "The name of the organization to use."
  type        = string
}

variable "vdc_name" {
  description = "The name of VDC to use."
  type        = string
  default     = null
}

variable "name" {
  description = "Catalog name."
  type        = string
}

variable "description" {
  description = "Description of catalog."
  type        = string
  default     = null
}

variable "storage_profile_name" {
  description = "Name of Storage Profile."
  type        = string
}

variable "delete_recursive" {
  description = "When destroying use delete_recursive=True to remove the catalog and any objects it contains that are in a state that normally allows removal."
  type        = bool
}

variable "delete_force" {
  description = "When destroying use delete_force=true with delete_recursive=true to remove a catalog and any objects it contains, regardless of their state."
  type        = bool
}

variable "publish_enabled" {
  description = "Enable allows to publish a catalog externally to make its vApp templates and media files available for subscription by organizations outside the Cloud Director installation. Default is false."
  type        = bool
  default     = false
}

variable "cache_enabled" {
  description = "Enable early catalog export to optimize synchronization. It is recommended to set it to true when publishing the catalog."
  type        = bool
  default     = false
}

variable "preserve_identity_information" {
  description = "Enable include BIOS UUIDs and MAC addresses in the downloaded OVF package. Preserving the identity information limits the portability of the package, and you should use it only when necessary."
  type        = bool
  default     = false
}

variable "password" {
  description = "A password to access the catalog. Only ASCII characters are allowed in a valid password."
  type        = string
  default     = null
  sensitive   = true
}

variable "metadata_entry" {
  description = "A set of metadata entries to assign."
  type        = list(map(string))
  default     = []
}

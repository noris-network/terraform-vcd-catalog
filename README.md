# terraform-vcd-catalog

Terraform module which manages catalog ressources on VMWare Cloud Director.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.9 |
| <a name="requirement_vcd"></a> [vcd](#requirement\_vcd) | >= 3.9.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_vcd"></a> [vcd](#provider\_vcd) | 3.9.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [vcd_catalog.catalog](https://registry.terraform.io/providers/vmware/vcd/latest/docs/resources/catalog) | resource |
| [vcd_storage_profile.storage_profile](https://registry.terraform.io/providers/vmware/vcd/latest/docs/data-sources/storage_profile) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_delete_force"></a> [delete\_force](#input\_delete\_force) | When destroying use delete\_force=true with delete\_recursive=true to remove a catalog and any objects it contains, regardless of their state. | `bool` | n/a | yes |
| <a name="input_delete_recursive"></a> [delete\_recursive](#input\_delete\_recursive) | When destroying use delete\_recursive=True to remove the catalog and any objects it contains that are in a state that normally allows removal. | `bool` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Catalog name. | `string` | n/a | yes |
| <a name="input_storage_profile_name"></a> [storage\_profile\_name](#input\_storage\_profile\_name) | Name of Storage Profile. | `string` | n/a | yes |
| <a name="input_vdc_org_name"></a> [vdc\_org\_name](#input\_vdc\_org\_name) | The name of the organization to use. | `string` | n/a | yes |
| <a name="input_cache_enabled"></a> [cache\_enabled](#input\_cache\_enabled) | Enable early catalog export to optimize synchronization. It is recommended to set it to true when publishing the catalog. | `bool` | `false` | no |
| <a name="input_description"></a> [description](#input\_description) | Description of catalog. | `string` | `null` | no |
| <a name="input_metadata_entry"></a> [metadata\_entry](#input\_metadata\_entry) | A set of metadata entries to assign. | `list(map(string))` | `[]` | no |
| <a name="input_password"></a> [password](#input\_password) | A password to access the catalog. Only ASCII characters are allowed in a valid password. | `string` | `null` | no |
| <a name="input_preserve_identity_information"></a> [preserve\_identity\_information](#input\_preserve\_identity\_information) | Enable include BIOS UUIDs and MAC addresses in the downloaded OVF package. Preserving the identity information limits the portability of the package, and you should use it only when necessary. | `bool` | `false` | no |
| <a name="input_publish_enabled"></a> [publish\_enabled](#input\_publish\_enabled) | Enable allows to publish a catalog externally to make its vApp templates and media files available for subscription by organizations outside the Cloud Director installation. Default is false. | `bool` | `false` | no |
| <a name="input_vdc_name"></a> [vdc\_name](#input\_vdc\_name) | The name of VDC to use. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the catalog. |
<!-- END_TF_DOCS -->

## Examples

```
module "catalog" {
  source               = "git::https://github.com/noris-network/terraform-vcd-catalog?ref=1.0.0"
  source               = "github.com/noris-network/terraform-vcd-catalog"
  name                 = "myCatalog"
  description          = "My Catalog"
  vdc_org_name         = "myORG"
  storage_profile_name = "myDatastorePolicy"
  delete_force         = false
  delete_recursive     = false
}
```

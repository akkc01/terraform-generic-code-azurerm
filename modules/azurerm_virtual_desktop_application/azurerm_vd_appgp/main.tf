resource "azurerm_virtual_desktop_application_group" "avd_appgroup" {
  for_each = var.avd_appgroup

  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  type                = each.value.type
  host_pool_id        = each.value.host_pool_id

  friendly_name                = try(each.value.friendly_name, null)
  description                  = try(each.value.description, null)
  default_desktop_display_name = try(each.value.default_desktop_display_name, null)

  tags = try(each.value.tags, null)

}

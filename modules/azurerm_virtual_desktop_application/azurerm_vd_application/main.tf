resource "azurerm_virtual_desktop_application" "avd_application" {

  for_each = var.avd_application

  name                         = each.value.name
  application_group_id         = each.value.application_group_id
  path                         = each.value.path
  command_line_argument_policy = each.value.command_line_argument_policy

  friendly_name          = try(each.value.friendly_name, null)
  description            = try(each.value.description, null)
  command_line_arguments = try(each.value.command_line_arguments, null)
  show_in_portal         = try(each.value.show_in_portal, true)
  icon_path              = try(each.value.icon_path, null)
  icon_index             = try(each.value.icon_index, null)

}
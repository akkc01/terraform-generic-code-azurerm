resource "azurerm_virtual_desktop_host_pool" "avd_hostpool" {

  for_each = var.avd_hpool

  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  type                = each.value.type
  load_balancer_type  = each.value.load_balancer_type

  friendly_name            = try(each.value.friendly_name, null)
  description              = try(each.value.description, null)
  validate_environment     = try(each.value.validate_environment, false)
  start_vm_on_connect      = try(each.value.start_vm_on_connect, false)
  custom_rdp_properties    = try(each.value.custom_rdp_properties, null)
  maximum_sessions_allowed = try(each.value.maximum_sessions_allowed, null)
  preferred_app_group_type = try(each.value.preferred_app_group_type, null)
  public_network_access    = try(each.value.public_network_access, "Enabled")

  vm_template = each.value.vm_template != null ? jsonencode(each.value.vm_template) : null

  tags = try(each.value.tags, null)

  dynamic "scheduled_agent_updates" {
    for_each = each.value.scheduled_agent_updates != null ? [each.value.scheduled_agent_updates] : []

    content {

      enabled                   = scheduled_agent_updates.value.enabled
      timezone                  = try(scheduled_agent_updates.value.timezone, null)
      use_session_host_timezone = try(scheduled_agent_updates.value.use_session_host_timezone, false)

      dynamic "schedule" {
        for_each = scheduled_agent_updates.value.schedules

        content {
          day_of_week = schedule.value.day_of_week
          hour_of_day = schedule.value.hour_of_day
        }
      }

    }
  }

}

variable "avd_hpool" {
  description = "Map of Azure Virtual Desktop Host Pools"
  type = map(object({
    name                     = string
    location                 = string
    resource_group_name      = string
    type                     = string
    load_balancer_type       = string
    friendly_name            = optional(string)
    description              = optional(string)
    validate_environment     = optional(bool)
    start_vm_on_connect      = optional(bool)
    custom_rdp_properties    = optional(string)
    maximum_sessions_allowed = optional(number)
    preferred_app_group_type = optional(string)
    public_network_access    = optional(string)
    scheduled_agent_updates = optional(object({
      enabled                   = bool
      timezone                  = optional(string)
      use_session_host_timezone = optional(bool)

      schedules = list(object({
        day_of_week = string
        hour_of_day = number
      }))
    }))

    vm_template = optional(map(string))

    tags = optional(map(string))

  }))
}

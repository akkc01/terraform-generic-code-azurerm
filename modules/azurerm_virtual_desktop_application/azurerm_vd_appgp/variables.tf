variable "avd_appgroup" {
  description = "Map of Azure Virtual Desktop Application Groups"
  type = map(object({

    name                = string
    location            = string
    resource_group_name = string
    type                = string
    host_pool_id        = string

    friendly_name                 = optional(string)
    default_desktop_display_name  = optional(string)
    description                   = optional(string)

    tags = optional(map(string))

  }))

}

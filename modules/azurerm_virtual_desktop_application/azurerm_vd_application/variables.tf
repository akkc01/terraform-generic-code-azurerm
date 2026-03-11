variable "avd_application" {
  description = "Map of Azure Virtual Desktop Applications"
  type = map(object({

    name                         = string
    application_group_id         = string
    path                         = string
    command_line_argument_policy = string

    friendly_name          = optional(string)
    description            = optional(string)
    command_line_arguments = optional(string)
    show_in_portal         = optional(bool)
    icon_path              = optional(string)
    icon_index             = optional(number)

  }))

}
variable "monitor_aad_diagnostic_settings" {
  description = <<EOT
Map of monitor_aad_diagnostic_settings, attributes below
Required:
    - name
Optional:
    - eventhub_authorization_rule_id
    - eventhub_name
    - log_analytics_workspace_id
    - storage_account_id
    - enabled_log (block):
        - category (required)
        - retention_policy (optional, block):
            - days (optional)
            - enabled (optional)
EOT

  type = map(object({
    name                           = string
    eventhub_authorization_rule_id = optional(string)
    eventhub_name                  = optional(string)
    log_analytics_workspace_id     = optional(string)
    storage_account_id             = optional(string)
    enabled_log = optional(list(object({
      category = string
      retention_policy = optional(object({
        days    = optional(number)
        enabled = optional(bool)
      }))
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.monitor_aad_diagnostic_settings : (
        v.eventhub_name == null || (can(regex("^[a-zA-Z0-9]([-._a-zA-Z0-9]{0,48}[a-zA-Z0-9])?$", v.eventhub_name)))
      )
    ])
    error_message = "The event hub name can contain only letters, numbers, periods (.), hyphens (-),and underscores (_), up to 50 characters, and it must begin and end with a letter or number."
  }
  # Note: 9 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


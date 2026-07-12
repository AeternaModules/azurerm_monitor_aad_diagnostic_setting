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
        days    = optional(number) # Default: 0
        enabled = optional(bool)   # Default: false
      }))
    })))
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_monitor_aad_diagnostic_setting's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.MonitorDiagnosticSettingName] regexp.MustCompile(`[<>*%&:\\?+\/]+`).MatchString(value)
  # path: name
  #   source:    [from validate.MonitorDiagnosticSettingName] len(value) < 1 || len(value) > 260
  # path: eventhub_name
  #   condition: can(regex("^[a-zA-Z0-9]([-._a-zA-Z0-9]{0,48}[a-zA-Z0-9])?$", value))
  #   message:   The event hub name can contain only letters, numbers, periods (.), hyphens (-),and underscores (_), up to 50 characters, and it must begin and end with a letter or number.
  # path: eventhub_authorization_rule_id
  #   source:    [from authRuleParse.ValidateAuthorizationRuleID] !ok
  # path: eventhub_authorization_rule_id
  #   source:    [from authRuleParse.ValidateAuthorizationRuleID] err != nil
  # path: log_analytics_workspace_id
  #   source:    [from workspaces.ValidateWorkspaceID] !ok
  # path: log_analytics_workspace_id
  #   source:    [from workspaces.ValidateWorkspaceID] err != nil
  # path: storage_account_id
  #   source:    [from commonids.ValidateStorageAccountID] !ok
  # path: storage_account_id
  #   source:    [from commonids.ValidateStorageAccountID] err != nil
  # path: days
  #   condition: value >= 0
  #   message:   must be at least 0
}


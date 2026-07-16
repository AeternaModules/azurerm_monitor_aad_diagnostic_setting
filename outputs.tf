output "monitor_aad_diagnostic_settings_id" {
  description = "Map of id values across all monitor_aad_diagnostic_settings, keyed the same as var.monitor_aad_diagnostic_settings"
  value       = { for k, v in azurerm_monitor_aad_diagnostic_setting.monitor_aad_diagnostic_settings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "monitor_aad_diagnostic_settings_enabled_log" {
  description = "Map of enabled_log values across all monitor_aad_diagnostic_settings, keyed the same as var.monitor_aad_diagnostic_settings"
  value       = { for k, v in azurerm_monitor_aad_diagnostic_setting.monitor_aad_diagnostic_settings : k => v.enabled_log if v.enabled_log != null && length(v.enabled_log) > 0 }
}
output "monitor_aad_diagnostic_settings_eventhub_authorization_rule_id" {
  description = "Map of eventhub_authorization_rule_id values across all monitor_aad_diagnostic_settings, keyed the same as var.monitor_aad_diagnostic_settings"
  value       = { for k, v in azurerm_monitor_aad_diagnostic_setting.monitor_aad_diagnostic_settings : k => v.eventhub_authorization_rule_id if v.eventhub_authorization_rule_id != null && length(v.eventhub_authorization_rule_id) > 0 }
}
output "monitor_aad_diagnostic_settings_eventhub_name" {
  description = "Map of eventhub_name values across all monitor_aad_diagnostic_settings, keyed the same as var.monitor_aad_diagnostic_settings"
  value       = { for k, v in azurerm_monitor_aad_diagnostic_setting.monitor_aad_diagnostic_settings : k => v.eventhub_name if v.eventhub_name != null && length(v.eventhub_name) > 0 }
}
output "monitor_aad_diagnostic_settings_log_analytics_workspace_id" {
  description = "Map of log_analytics_workspace_id values across all monitor_aad_diagnostic_settings, keyed the same as var.monitor_aad_diagnostic_settings"
  value       = { for k, v in azurerm_monitor_aad_diagnostic_setting.monitor_aad_diagnostic_settings : k => v.log_analytics_workspace_id if v.log_analytics_workspace_id != null && length(v.log_analytics_workspace_id) > 0 }
}
output "monitor_aad_diagnostic_settings_name" {
  description = "Map of name values across all monitor_aad_diagnostic_settings, keyed the same as var.monitor_aad_diagnostic_settings"
  value       = { for k, v in azurerm_monitor_aad_diagnostic_setting.monitor_aad_diagnostic_settings : k => v.name if v.name != null && length(v.name) > 0 }
}
output "monitor_aad_diagnostic_settings_storage_account_id" {
  description = "Map of storage_account_id values across all monitor_aad_diagnostic_settings, keyed the same as var.monitor_aad_diagnostic_settings"
  value       = { for k, v in azurerm_monitor_aad_diagnostic_setting.monitor_aad_diagnostic_settings : k => v.storage_account_id if v.storage_account_id != null && length(v.storage_account_id) > 0 }
}


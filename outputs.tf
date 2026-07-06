output "monitor_aad_diagnostic_settings" {
  description = "All monitor_aad_diagnostic_setting resources"
  value       = azurerm_monitor_aad_diagnostic_setting.monitor_aad_diagnostic_settings
}
output "monitor_aad_diagnostic_settings_enabled_log" {
  description = "List of enabled_log values across all monitor_aad_diagnostic_settings"
  value       = [for k, v in azurerm_monitor_aad_diagnostic_setting.monitor_aad_diagnostic_settings : v.enabled_log]
}
output "monitor_aad_diagnostic_settings_eventhub_authorization_rule_id" {
  description = "List of eventhub_authorization_rule_id values across all monitor_aad_diagnostic_settings"
  value       = [for k, v in azurerm_monitor_aad_diagnostic_setting.monitor_aad_diagnostic_settings : v.eventhub_authorization_rule_id]
}
output "monitor_aad_diagnostic_settings_eventhub_name" {
  description = "List of eventhub_name values across all monitor_aad_diagnostic_settings"
  value       = [for k, v in azurerm_monitor_aad_diagnostic_setting.monitor_aad_diagnostic_settings : v.eventhub_name]
}
output "monitor_aad_diagnostic_settings_log_analytics_workspace_id" {
  description = "List of log_analytics_workspace_id values across all monitor_aad_diagnostic_settings"
  value       = [for k, v in azurerm_monitor_aad_diagnostic_setting.monitor_aad_diagnostic_settings : v.log_analytics_workspace_id]
}
output "monitor_aad_diagnostic_settings_name" {
  description = "List of name values across all monitor_aad_diagnostic_settings"
  value       = [for k, v in azurerm_monitor_aad_diagnostic_setting.monitor_aad_diagnostic_settings : v.name]
}
output "monitor_aad_diagnostic_settings_storage_account_id" {
  description = "List of storage_account_id values across all monitor_aad_diagnostic_settings"
  value       = [for k, v in azurerm_monitor_aad_diagnostic_setting.monitor_aad_diagnostic_settings : v.storage_account_id]
}


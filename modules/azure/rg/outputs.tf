output "resource_group_name" {
  description = "Azure resource group name"
  value       = azurerm_resource_group.default.name
}

output "resource_group_location" {
  description = "Azure resource group location"
  value       = azurerm_resource_group.default.location
}
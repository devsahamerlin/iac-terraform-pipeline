resource "azurerm_resource_group" "default" {
  name     = var.name
  location = var.location

  tags = {
    environment = var.environment
  }
}
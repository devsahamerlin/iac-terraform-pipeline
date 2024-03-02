module "azure-multicloud-iac-rg" {
  source      = "./modules/azure/rg"
  environment = var.azure_environment
  location    = var.azure_resource_group_location
  name        = var.azure_resource_group_name
}

module "azure-aks" {
  source                  = "./modules/azure/aks"
  appId                   = var.azure_client_id
  password                = var.azure_client_secret
  environment             = var.azure_environment
  kubernetes_version      = var.azure_aks_kubernetes_version
  name                    = module.azure-multicloud-iac-rg.resource_group_name
  node_count              = var.azure_aks_node_count
  os_disk_size_gb         = var.azure_aks_os_disk_size_gb
  resource_group_location = module.azure-multicloud-iac-rg.resource_group_location
  resource_group_name     = module.azure-multicloud-iac-rg.resource_group_name
  vm_size                 = var.azure_aks_vm_size
}
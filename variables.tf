variable "gcp_project_id" {}

variable "gcp_region" {
  default = "us-east4"
}

variable "gcp_credentials" {}

variable "aws_region" {
  default = "us-east-2"
}

variable "aws-owners" {
  default = "099720109477"
}

variable "azure_subscription_id" {}
variable "azure_client_id" {}
variable "azure_client_secret" {}
variable "azure_tenant_id" {}

variable "azure_environment" {
  default = "test"
}
variable "azure_resource_group_location" {
  default = "West US 2"
}
variable "azure_resource_group_name" {
  default = "multicloud-iac"
}
variable "azure_aks_kubernetes_version" {
  default = "1.29"
}

variable "azure_aks_node_count" {
  default = 1
}
variable "azure_aks_os_disk_size_gb" {
  default = 30
}
variable "azure_aks_vm_size" {
  default = "Standard_D2_v2"
}
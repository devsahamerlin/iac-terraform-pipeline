variable "appId" {
  description = "Azure Kubernetes Service Cluster service principal"
}

variable "password" {
  description = "Azure Kubernetes Service Cluster password"
}

variable "name" {}
variable "resource_group_location" {}
variable "resource_group_name" {}
variable "kubernetes_version" {}
variable "node_count" {}
variable "vm_size" {}
variable "os_disk_size_gb" {}
variable "environment" {}

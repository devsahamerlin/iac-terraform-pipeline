provider "google" {
  project     = var.gcp_project_id
  region      = var.gcp_region
  credentials = var.gcp_credentials
}
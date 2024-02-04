resource "google_storage_bucket" "terraform-bucket" {
  location      = "US"
  name          = "${var.gcp_project_id}-bucket"
  force_destroy = true
}
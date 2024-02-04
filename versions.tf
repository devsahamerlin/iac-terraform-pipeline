terraform {
  required_version = ">= 1.2.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.14.0"
    }
  }

#  backend "local" {
#    path = "terraform/state/local.tfsate"
#  }

#  backend "gcs" {
#    bucket = "tf-bs-bucket"
#    prefix = "env/test"
#  }

  backend "remote" {
    hostname = "app.terraform.io"
    organization = "devsahamerlin"
    workspaces {
      name = "iac-terraform-pipeline"
    }
  }
}
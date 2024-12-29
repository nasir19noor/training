resource "google_storage_bucket" "tf-state-bucket" {
  project   = "terraform-project-441206"
  name      = "nasir-terraform-state"
  location  = "asia-southeast1"
  force_destroy = true
}


terraform {
  required_version = ">= 0.13"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.1.0"
    }
  }
}
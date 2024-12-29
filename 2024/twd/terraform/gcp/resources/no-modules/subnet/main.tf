resource "google_compute_subnetwork" "subnetwork" {
  project       = "nasir-441404" 
  name          = "nasir-subnetwork"
  ip_cidr_range = "10.1.0.0/16"
  region        = "asia-southeast1"
  network       = "nasir-vpc"
}

terraform {
  required_version = ">= 0.13"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.1.0"
    }
  }
  # backend "gcs" {
  #   bucket = "nasir-terraform-state"
  #   prefix = "subnet/"
  # }
}
resource "google_compute_instance" "nasir-vm" {
  project          = "nasir-441404"
  count            = 2
  name             = "webserver-nasir"
  zone             = "asia-southeast1-b"
  machine_type     = "e2-micro"
  tags             = ["webserver"]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
    }
  }

  network_interface {
    network = "nasir-vpc"
    subnetwork = "nasir-subnetwork"
    subnetwork_project = "nasir-441404"

    access_config {}
  }
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
  #   prefix = "compute-engine/"
  # }
}
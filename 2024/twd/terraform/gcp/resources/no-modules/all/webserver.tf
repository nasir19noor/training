resource "google_compute_instance" "nasir-vm" {
  project          = "nasir-441404"
  name             = "webserver-nasir-2"
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


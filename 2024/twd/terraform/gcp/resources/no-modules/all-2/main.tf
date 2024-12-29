resource "google_compute_firewall" "rules" {
  project     = "nasir-441404"
  name        = "allow-webserver-2"
  network     = "nasir-vpc-2"
  description = "Allow Webserver"

  allow {
    protocol = "tcp"
    ports    = ["22", "80"]
  }

  source_ranges = ["0.0.0.0/0"]

  target_tags = ["webserver"]

}



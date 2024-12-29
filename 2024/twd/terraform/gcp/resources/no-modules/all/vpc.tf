resource "google_compute_network" "network" {
  name = "nasir-vpc-2"
  auto_create_subnetworks  = false
  project = "nasir-441404"
  description = "terraform vpc"
}



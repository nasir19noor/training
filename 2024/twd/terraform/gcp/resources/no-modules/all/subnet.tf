resource "google_compute_subnetwork" "subnetwork" {
  project       = "nasir-441404" 
  name          = "nasir-subnetwork-2"
  ip_cidr_range = "10.1.0.0/16"
  region        = "asia-southeast1"
  network       = "nasir-vpc-2"
}

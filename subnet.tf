resource "google_compute_subnetwork" "this" {
  name          = "tf-subnet"
  ip_cidr_range = "10.0.0.0/24"
  network       = google_compute_network.network.id
}


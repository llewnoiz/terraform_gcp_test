resource "google_compute_router" "this" {
  name    = "my-router"
  region  = google_compute_subnetwork.this.region
  network = google_compute_network.network.id

  bgp {
    asn = 64514
  }
}
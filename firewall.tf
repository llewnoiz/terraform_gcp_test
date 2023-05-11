resource "google_compute_firewall" "ssh" {
  name    = "test-firewall-ssh"
  network = google_compute_network.network.name

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["35.235.240.0/20"]
  source_tags   = ["ssh"]
}

resource "google_compute_firewall" "internal" {
  name    = "test-firewall-internal"
  network = google_compute_network.network.name


  allow {
    protocol = "tcp"
    ports    = []
  }

  source_ranges = ["10.0.0.0/8"]
  source_tags   = ["internal"]
}

resource "google_compute_firewall" "http" {
  name    = "test-firewall-http"
  network = google_compute_network.network.name


  allow {
    protocol = "tcp"
    ports    = ["80", "8080"]
  }

  source_ranges = ["35.191.0.0/16", "130.211.0.0/22"]
  source_tags   = ["http-lb"]
}
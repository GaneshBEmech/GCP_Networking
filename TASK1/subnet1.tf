resource "google_compute_subnetwork" "us-central1"{
  name          = "us-central1"
  ip_cidr_range = "10.1.0.0/16"
  region        = "us-central1"
  network = google_compute_network.custom_network.id 
  depends_on = [
    google_compute_network.custom_network
  ]
}

resource "google_compute_subnetwork" "us-east1"{
  name          = "us-east1"
  ip_cidr_range = "10.2.0.0/16"
  region        = "us-east1"
  network = google_compute_network.custom_network.id
  depends_on = [
    google_compute_network.custom_network
  ]
}
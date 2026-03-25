resource "google_compute_firewall" "icmp" {
  name = "icmp"
  network = google_compute_network.custom_network.id

  source_service_accounts = [
    "my-project-3-358101@my-project-3-358101.iam.gserviceaccount.com"
  ]
  target_service_accounts = [
    "my-project-3-358101@my-project-3-358101.iam.gserviceaccount.com"
  ]
  
  allow {
    protocol = "icmp"
  }
}
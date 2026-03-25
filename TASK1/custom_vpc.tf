resource "google_compute_network" "custom_network" {
 name = var.network_name
 auto_create_subnetworks = false
 
}

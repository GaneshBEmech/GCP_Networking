provider "google" {
    project = "my-project-3-358101"
    region  = "us-central1"

}

resource "google_compute_instance" "task1-instance-1" {
  name = "task1-instance-1"
  machine_type = "e2-micro"
  zone = "us-central1-a"
  boot_disk {
    initialize_params { 
      image = "debian-11-bullseye-v20260310"
    }
  }
  
  network_interface {
    network = google_compute_network.custom_network.id
    subnetwork = google_compute_subnetwork.us-central1.id 
  }
  
   depends_on = [
     google_compute_network.custom_network,
     google_compute_subnetwork.us-central1,
     google_compute_subnetwork.us-east1
   ]
 
}



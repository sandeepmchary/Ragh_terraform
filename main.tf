provider "google"{
    credentials = file ("nifty-harmony-329714-2c3f0fcac0c3.json")
    project = "nifty-harmony-329714"
    region = "us-central1"
    zone = "us-central1-c"
}
resource "google_compute_instance" "samantha" {
  name = "test"
  machine_type = "e2-micro"
  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-7"
    }
  }
  network_interface {
    network = "default"
    access_config {
       // Ephemeral IP
    }
  }
}


resource "google_compute_firewall" "allow_ssh" {
  name    = "${var.instance_name}-ssh"
  network = "default" 

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"] 
  target_tags   = ["${var.instance_name}-tag"]
}

resource "google_compute_firewall" "allow_application_port" {
  name    = "${var.instance_name}-app-port"
  network = "default"



  source_ranges = ["0.0.0.0/0"] 
  target_tags   = ["${var.instance_name}-tag"]
}

resource "google_compute_instance" "app_vm" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.gcp_zone

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts" 
      size  = var.disk_size_gb
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }

  tags = ["${var.instance_name}-tag"]

  metadata = {
    ssh-keys = "${var.ssh_user}:${file(var.ssh_public_key_path)}"
  }
}
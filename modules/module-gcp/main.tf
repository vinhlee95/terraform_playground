terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.64.0"
    }
  }
}

provider "google" {
  credentials = file(var.gcp_credentials_file)

  project = var.gcp_project
  # https://cloud.google.com/compute/docs/regions-zones
  region = var.region
  zone   = var.zone
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance
# https://cloud.google.com/compute/docs/instances
resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance"
  machine_type = "f1-micro"
  tags         = ["web", "dev"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    # Connect this new resource to the already created vpc_network
    network = google_compute_network.vpc_network.name
    access_config {
    }
  }
}
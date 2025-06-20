terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = ">= 5.0.0" # Use uma versão compatível com seu ambiente
    }
  }
  # Opcional: Configurar o backend para armazenar o estado do Terraform em um bucket GCS
  # backend "gcs" {
  #   bucket = "seu-bucket-tfstate" # Crie um bucket no GCP para isso
  #   prefix = "terraform/state"
  # }
}

provider "google" {
  project = var.gcp_project_id
  region  = var.gcp_region
  zone    = var.gcp_zone
}
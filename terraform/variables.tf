variable "gcp_project_id" {
  description = "O ID do seu projeto no GCP"
  type        = string
  default     = "festive-post-461507-v9" 
}

variable "gcp_region" {
  description = "Região do GCP para a VM"
  type        = string
  default     = "us-central1"
}

variable "gcp_zone" {
  description = "Zona do GCP para a VM"
  type        = string
  default     = "us-central1-a"
}

variable "ssh_user" {
  description = "Usuário para acesso SSH"
  type        = string
  default     = "admin"
}

variable "ssh_public_key_path" {
  description = "Caminho para sua chave pública SSH"
  type        = string
  default     = "~/.ssh/id_rsa.pub" 
}
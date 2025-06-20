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

variable "ssh_public_key_content" {
  description = "Conteúdo da sua chave pública SSH"
  type        = string
}


variable "application_port" { 
  description = "Porta da aplicação a ser liberada no firewall"
  type        = number
  default     = 80 
}


variable "instance_name" { 
  description = "Nome da instância VM"
  type        = string
  default     = "Terraform-ansible"
}

variable "machine_type" { 
  description = "Tipo de máquina (CPU/RAM)"
  type        = string
  default     = "e2-medium" 
}

variable "disk_size_gb" { 
  description = "Tamanho do disco em GB"
  type        = number
  default     = 20 
}



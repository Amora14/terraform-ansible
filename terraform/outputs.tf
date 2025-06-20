output "instance_ip" {
  description = "IP externo da instância VM"
  value       = google_compute_instance.app_vm.network_interface[0].access_config[0].nat_ip
}

output "instance_name" {
  description = "Nome da instância VM"
  value       = google_compute_instance.app_vm.name
}

output "ssh_user" {
  description = "Usuário SSH configurado para a VM"
  value       = var.ssh_user
}
output "ip_address" {
  value = yandex_compute_instance.yurchikhin-vm1.network_interface.0.ip_address
}
output "vm_external_ip" {
  description = "External IP address of the virtual machine"
  value       = yandex_compute_instance.yurchikhin-vm1.network_interface.0.nat_ip_address
}
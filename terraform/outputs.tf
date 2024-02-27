output "ip_address" {
  value = module.yc_instance.ip_address
}
output "vm_external_ip" {
  description = "External IP address of the virtual machine"
  value       = module.yc_instance.vm_external_ip
}

output "network_name" {
  value = module.yc_network.network_name
}

output "subnet_name" {
  value = module.yc_network.subnet_name
}

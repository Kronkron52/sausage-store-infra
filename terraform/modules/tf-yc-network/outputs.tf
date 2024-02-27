output "network_name" {
  value = data.yandex_vpc_network.default.name
}

output "subnet_name" {
  value = data.yandex_vpc_subnet.yurchikhin-network[var.subnet_id].name
}

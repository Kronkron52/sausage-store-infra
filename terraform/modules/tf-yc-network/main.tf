data "yandex_vpc_network" "default" {
  name = "default"
}

data "yandex_vpc_subnet" "yurchikhin-network" {
  for_each  = toset(data.yandex_vpc_network.default.subnet_ids)
  subnet_id = "${each.value}"
}

data "yandex_vpc_subnet" "default" {
  name = data.yandex_vpc_subnet.yurchikhin-network[var.subnet_id].name
}


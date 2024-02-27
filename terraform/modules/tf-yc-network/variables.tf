variable "network_zones" {
  type    = set(string)
  default = ["ru-central1-a", "ru-central1-b", "ru-central1-c"]
}

variable "subnet_id" {
  type    = string
  default = "e9b9i3jkm7hdhu9rkteg"
}

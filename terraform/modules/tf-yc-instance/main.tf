provider "yandex" {
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
}


resource "yandex_compute_instance" "yurchikhin-vm1" {
  name = "yurchikhin-virt-terraform"
  platform_id = var.platform_id
  zone = var.zone

  resources {
    cores  = 10
    memory = 10
  }
  boot_disk {
    initialize_params {
      image_id = "fd80qm01ah03dkqb14lc"
      size = var.disk_size
    }
  }
  scheduling_policy {
    preemptible = true
  }

  network_interface {
    subnet_id = "e9b9i3jkm7hdhu9rkteg"
    nat       = true
  }
  metadata = {
    user-data = "${file("setup.yaml")}"
  }
}
terraform {
  # Описание бэкенда хранения состояния
  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "terraform-state-eduard"
    region     = "ru-central1"
    key        = "terraform.tfstate"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}

module "yc_instance" {
  source = "./modules/tf-yc-instance"
  image_id = var.image_id
  zone = var.zone
  subnet_id = var.subnet_id
}

module "yc_network" {
  source = "./modules/tf-yc-network"
}
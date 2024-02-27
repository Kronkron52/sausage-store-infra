variable "cloud_id" {
  description = "ID облака Yandex.Cloud"
  type        = string
  default     = "b1g3jddf4nv5e9okle7p"
}

variable "folder_id" {
  description = "ID папки в Yandex.Cloud"
  type        = string
  default     = "b1g3nvv8sngeob717ei7"
}

variable "zone" {
  description = "Зона размещения ВМ"
  type        = string
  default     = "ru-central1-a"
}

variable "platform_id" {
  description = "Идентификатор платформы"
  type        = string
  default     = "standard-v1"
}

variable "disk_size" {
  description = "Размер диска для ВМ"
  type        = number
  default     = 30
}

variable "image_id" {
  description = "id виртуальной машины"
  type        = string
  default     = "fd80qm01ah03dkqb14lc"
}

variable "subnet_id" {
  description = "id сети"
  type        = string
  default     = "e9b9i3jkm7hdhu9rkteg"
}
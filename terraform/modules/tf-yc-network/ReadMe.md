# Модуль Terraform для создания сети в Yandex.Cloud
Этот модуль Terraform создает виртуальную частную сеть (VPC) и подсети в Yandex.Cloud

## Зависимости
Для работы этого модуля необходимы следующие зависимости:

- Версия Terraform 0.13 или выше
- Версия провайдера Yandex 0.61 или выше

## Входные переменные

| Имя           | Описание                     | Тип           | Значение по умолчанию | Обязательно |
|----------------|------------------------------|---------------|----------------------|-------------|
| network_zones  | Список зон для подсетей      | set(string)   | []                   | да          |
| subnet_id      | Имя зоны                     | string        |                      | да    


## Выходные переменные

| Имя         | Описание                   |
|--------------|---------------------------|
| network_name  | ID созданной сети        |
| subnet_name  | ID созданных подсетей     |
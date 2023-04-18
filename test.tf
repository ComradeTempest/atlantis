resource "yandex_vpc_network" "atlantis-network" {
  name = "atlantis-network"
} ##
resource "yandex_vpc_subnet" "atlantis-subnet1" {
  name           = "atlantis-subnet1"
  zone           = "ru-central1-a"
  network_id     = yandex_vpc_network.atlantis-network.id
  v4_cidr_blocks = ["192.168.113.0/24"]

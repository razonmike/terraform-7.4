Домашнее задание к занятию "15. Средства командной работы над инфраструктурой."

Задача 2. Написать серверный конфиг для атлантиса.
Смысл задания – познакомиться с документацией о серверной конфигурации и конфигурации уровня репозитория.

Создай server.yaml который скажет атлантису:

Укажите, что атлантис должен работать только для репозиториев в вашем github (или любом другом) аккаунте.
На стороне клиентского конфига разрешите изменять workflow, то есть для каждого репозитория можно будет указать свои дополнительные команды.
В workflow используемом по-умолчанию сделайте так, что бы во время планирования не происходил lock состояния.
Создай atlantis.yaml который, если поместить в корень terraform проекта, скажет атлантису:

Надо запускать планирование и аплай для двух воркспейсов stage и prod.
Необходимо включить автопланирование при изменении любых файлов *.tf.
В качестве результата приложите ссылку на файлы server.yaml и atlantis.yaml.

Ссылки на файлы

[server.yaml](./src/server.yaml)

[atlantis.yaml](./src/atlantis.yaml)

Задача 3. Знакомство с каталогом модулей.
В каталоге модулей найдите официальный модуль от aws для создания ec2 инстансов.
Изучите как устроен модуль. Задумайтесь, будете ли в своем проекте использовать этот модуль или непосредственно ресурс aws_instance без помощи модуля?
В рамках предпоследнего задания был создан ec2 при помощи ресурса aws_instance. Создайте аналогичный инстанс при помощи найденного модуля.

В качестве результата задания приложите ссылку на созданный блок конфигураций.

Так как с AWS мы больше не работаем, изучил модуль Сергея Андрюнина

[instance.tf](./src/terraform/modules/instance/instance.tf)

```bash
terraform plan
module.instance.data.yandex_compute_image.image: Reading...
module.instance.data.yandex_compute_image.image: Read complete after 3s [id=fd8jvcoeij6u9se84dt5]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # module.instance.yandex_compute_instance.instance[0] will be created
  + resource "yandex_compute_instance" "instance" {
      + created_at                = (known after apply)
      + description               = "News App Demo"
      + folder_id                 = "b1get0pjdinrmk0qre2f"
      + fqdn                      = (known after apply)
      + hostname                  = "-1"
      + id                        = (known after apply)
      + metadata                  = {
          + "ssh-keys" = <<-EOT
                centos:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC3FwLIHAglyTAa0HS7BmjM0tay7BdSWj4tRrB0+wqxKfChecB1DJxn7X5JH9PnI/LnTDTd8Bn96oh6ww5hW0ytR54/dE/NCvdFn8I/ueYY3IRZsp2tpty2dQRN7epQQ6Nx04+6HEmjumyAiDdUVv6S7H2Huof+YlJybHbss0rmS2e/6Ek8WZo5y8k+Aq9lqs1ezmlSRlhIudOOAciNBAmme4a0H4JI4PSYXzyv+wOuYd74tvD5cSrvk22rf7gOp3DMRFk5zzd1W2Bu+7sJ/p8l2zLDBFXUcEEZICVnd+SRVZL3TxS0B1gRRiBB5FpIHjJNmlIQb1oyPy7CkXe51pokZNyqtfNupuVOlg5gd5DavDaZUsnpg3/N4wKLVx1xLuvd+EOpZxKTPQpoUjCVYwyAuPfRhqvCehocFuEsHFAv7av1jsLdO9TvZG75gGZ/PoLrWkJtwUgIUJmgrrjOWAabPEtmNaZ5n2hXWH4lov8j7ZEuKF6Sq1X2mKeiUoiNXrE= razonmike@razonmike-ThinkPad-T480
            EOT
        }
      + name                      = "-1"
      + network_acceleration_type = "standard"
      + platform_id               = "standard-v2"
      + service_account_id        = (known after apply)
      + status                    = (known after apply)
      + zone                      = "ru-central1-a"

      + boot_disk {
          + auto_delete = true
          + device_name = (known after apply)
          + disk_id     = (known after apply)
          + mode        = (known after apply)

          + initialize_params {
              + description = (known after apply)
              + image_id    = "fd8jvcoeij6u9se84dt5"
              + name        = (known after apply)
              + size        = 20
              + snapshot_id = (known after apply)
              + type        = "network-ssd"
            }
        }

      + network_interface {
          + index              = (known after apply)
          + ip_address         = (known after apply)
          + ipv4               = true
          + ipv6               = (known after apply)
          + ipv6_address       = (known after apply)
          + mac_address        = (known after apply)
          + nat                = true
          + nat_ip_address     = (known after apply)
          + nat_ip_version     = (known after apply)
          + security_group_ids = (known after apply)
        }

      + placement_policy {
          + placement_group_id = (known after apply)
        }

      + resources {
          + core_fraction = 100
          + cores         = 2
          + memory        = 2
        }

      + scheduling_policy {
          + preemptible = (known after apply)
        }
    }

Plan: 1 to add, 0 to change, 0 to destroy.
```

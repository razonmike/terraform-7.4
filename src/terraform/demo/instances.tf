module "instance" {
  source        = "../modules/instance"
  zone          = var.yc_region
  folder_id     = var.yc_folder_id
  image         = "centos-7"
  platform_id   = "standard-v2"
  description   = "News App Demo"
  instance_role = "news,balancer"
  users         = "centos"
  cores         = local.news_cores[terraform.workspace]
  boot_disk     = "network-ssd"
  disk_size     = local.news_disk_size[terraform.workspace]
  nat           = "true"
  memory        = "2"
  core_fraction = "100"
}

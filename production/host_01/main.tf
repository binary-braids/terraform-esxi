# Networking
module "networking" {
  source = "./modules/networking"

  vswitch_name    = var.vswitch_name
  port_group_name = var.port_group_name
  port_group_vlan = var.port_group_vlan
}

# Virtual Machines

## Domain Controller
module "dc01" {
  source = "./modules/virtual_machines"

  guest_name          = var.dc01_guest_name
  boot_firmware       = var.dc01_boot_firmware
  disk_store          = var.dc01_disk_store
  memsize             = var.dc01_memsize
  numvcpus            = var.dc01_numvcpus
  power               = var.dc01_power
  resource_pool_name  = var.dc01_resource_pool_name
  virthwver           = var.dc01_virthwver
  virtual_network     = var.dc01_virtual_network
  nic_type            = var.dc01_nic_type
  notes               = var.dc01_notes
}

## Veeam Server
module "veeam" {
  source = "./modules/virtual_machines"

  guest_name          = var.veeam_guest_name
  boot_firmware       = var.veeam_boot_firmware
  disk_store          = var.veeam_disk_store
  memsize             = var.veeam_memsize
  numvcpus            = var.veeam_numvcpus
  power               = var.veeam_power
  resource_pool_name  = var.veeam_resource_pool_name
  virthwver           = var.veeam_virthwver
  virtual_network     = var.veeam_virtual_network
  nic_type            = var.veeam_nic_type
  notes               = var.veeam_notes
}

## K3s Node
module "k3s01" {
  source = "./modules/virtual_machines"

  guest_name          = var.k3s01_guest_name
  boot_firmware       = var.k3s01_boot_firmware
  disk_store          = var.k3s01_disk_store
  memsize             = var.k3s01_memsize
  numvcpus            = var.k3s01_numvcpus
  power               = var.k3s01_power
  resource_pool_name  = var.k3s01_resource_pool_name
  virthwver           = var.k3s01_virthwver
  virtual_network     = var.k3s01_virtual_network
  nic_type            = var.k3s01_nic_type
  notes               = var.k3s01_notes
}

# Media Server
module "media" {
  source = "./modules/virtual_machines"

  guest_name          = var.media_guest_name
  boot_firmware       = var.media_boot_firmware
  disk_store          = var.media_disk_store
  memsize             = var.media_memsize
  numvcpus            = var.media_numvcpus
  power               = var.media_power
  resource_pool_name  = var.media_resource_pool_name
  virthwver           = var.media_virthwver
  virtual_network     = var.media_virtual_network
  nic_type            = var.media_nic_type
  notes               = var.media_notes
}



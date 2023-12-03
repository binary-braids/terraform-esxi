# Networking
module "networking" {
  source = "./modules/networking"

  vswitch_name    = var.vswitch_name
  port_group_name = var.port_group_name
  port_group_vlan = var.port_group_vlan
}

# Virtual Machines

## Domain Controller
module "dc02" {
  source = "./modules/virtual_machines"

  guest_name      = var.dc02_guest_name
  boot_disk_type  = var.dc02_boot_disk_type
  boot_disk_size  = var.dc02_boot_disk_size
  boot_firmware   = var.dc02_boot_firmware
  disk_store      = var.dc02_disk_store
  memsize         = var.dc02_memsize
  numvcpus        = var.dc02_numvcpus
  virtual_network = var.dc02_virtual_network
  nic_type        = var.dc02_nic_type
  notes           = var.dc02_notes
}

## Certificate Server
module "ca" {
  source = "./modules/virtual_machines"

  guest_name      = var.ca_guest_name
  boot_disk_type  = var.ca_boot_disk_type
  boot_disk_size  = var.ca_boot_disk_size
  boot_firmware   = var.ca_boot_firmware
  disk_store      = var.ca_disk_store
  memsize         = var.ca_memsize
  numvcpus        = var.ca_numvcpus
  virtual_network = var.ca_virtual_network
  nic_type        = var.ca_nic_type
  notes           = var.ca_notes
}

## K3s Node
module "k3s02" {
  source = "./modules/virtual_machines"

  guest_name      = var.k3s02_guest_name
  boot_disk_type  = var.k3s02_boot_disk_type
  boot_disk_size  = var.k3s02_boot_disk_size
  boot_firmware   = var.k3s02_boot_firmware
  disk_store      = var.k3s02_disk_store
  memsize         = var.k3s02_memsize
  numvcpus        = var.k3s02_numvcpus
  virtual_network = var.k3s02_virtual_network
  nic_type        = var.k3s02_nic_type
  notes           = var.k3s02_notes
}

# Ansible Server
module "ansible" {
  source = "./modules/virtual_machines"

  guest_name      = var.ansible_guest_name
  boot_disk_type  = var.ansible_boot_disk_type
  boot_disk_size  = var.ansible_boot_disk_size
  boot_firmware   = var.ansible_boot_firmware
  disk_store      = var.ansible_disk_store
  memsize         = var.ansible_memsize
  numvcpus        = var.ansible_numvcpus
  virtual_network = var.ansible_virtual_network
  nic_type        = var.ansible_nic_type
  notes           = var.ansible_notes
}



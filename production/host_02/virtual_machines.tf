# Virtual Machines

## Domain Controller
resource "esxi_guest" "dc02" {
  guest_name          = var.dc02_guest_name
  boot_firmware       = var.dc02_boot_firmware
  disk_store          = var.dc02_disk_store
  memsize             = var.dc02_memsize
  numvcpus            = var.dc02_numvcpus
  power               = var.dc02_power
  resource_pool_name  = var.dc02_resource_pool_name
  virthwver           = var.dc02_virthwver


  network_interfaces {
    virtual_network     = var.dc02_virtual_network
    nic_type            = var.dc02_nic_type
  }

  notes               = var.dc02_notes
}

## Certificate Server
resource "esxi_guest" "ca" {
  guest_name          = var.ca_guest_name
  boot_firmware       = var.ca_boot_firmware
  disk_store          = var.ca_disk_store
  memsize             = var.ca_memsize
  numvcpus            = var.ca_numvcpus
  power               = var.ca_power
  resource_pool_name  = var.ca_resource_pool_name
  virthwver           = var.ca_virthwver


  network_interfaces {
    virtual_network     = var.ca_virtual_network
    nic_type            = var.ca_nic_type
  }

  notes               = var.ca_notes
}

# Ansible Server
resource "esxi_guest" "ansible" {
  guest_name          = var.ansible_guest_name
  boot_firmware       = var.ansible_boot_firmware
  disk_store          = var.ansible_disk_store
  memsize             = var.ansible_memsize
  numvcpus            = var.ansible_numvcpus
  power               = var.ansible_power
  resource_pool_name  = var.ansible_resource_pool_name
  virthwver           = var.ansible_virthwver


  network_interfaces {
    virtual_network     = var.ansible_virtual_network
    nic_type            = var.ansible_nic_type
  }

  notes               = var.ansible_notes
}

# Docker Host
resource "esxi_guest" "docker" {
  guest_name          = var.docker_guest_name
  boot_firmware       = var.docker_boot_firmware
  disk_store          = var.docker_disk_store
  memsize             = var.docker_memsize
  numvcpus            = var.docker_numvcpus
  power               = var.docker_power
  resource_pool_name  = var.docker_resource_pool_name
  virthwver           = var.docker_virthwver
  clone_from_vm       = var.docker_clone_from_vm

  network_interfaces {
    virtual_network     = var.docker_virtual_network
    nic_type            = var.docker_nic_type
  }

  guestinfo = {
    "metadata.encoding" = "base64"
    "metadata" = base64encode(file("./cloud-init/docker_metadata.yaml"))
  }

  notes               = var.docker_notes
}



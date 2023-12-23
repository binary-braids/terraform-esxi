# Virtual Machines

## Domain Controller
resource "esxi_guest" "dc01" {
  guest_name          = var.dc01_guest_name
  boot_firmware       = var.dc01_boot_firmware
  disk_store          = var.dc01_disk_store
  memsize             = var.dc01_memsize
  numvcpus            = var.dc01_numvcpus
  power               = var.dc01_power
  resource_pool_name  = var.dc01_resource_pool_name
  virthwver           = var.dc01_virthwver


  network_interfaces {
    virtual_network     = var.dc01_virtual_network
    nic_type            = var.dc01_nic_type
  }

  notes               = var.dc01_notes
}

## Veeam Server
resource "esxi_guest" "veeam" {
  guest_name          = var.veeam_guest_name
  boot_firmware       = var.veeam_boot_firmware
  disk_store          = var.veeam_disk_store
  memsize             = var.veeam_memsize
  numvcpus            = var.veeam_numvcpus
  power               = var.veeam_power
  resource_pool_name  = var.veeam_resource_pool_name
  virthwver           = var.veeam_virthwver


  network_interfaces {
    virtual_network     = var.veeam_virtual_network
    nic_type            = var.veeam_nic_type
  }

  notes               = var.veeam_notes
}

## K3s Node
resource "esxi_guest" "k3s01" {
  guest_name          = var.k3s01_guest_name
  boot_firmware       = var.k3s01_boot_firmware
  disk_store          = var.k3s01_disk_store
  memsize             = var.k3s01_memsize
  numvcpus            = var.k3s01_numvcpus
  power               = var.k3s01_power
  resource_pool_name  = var.k3s01_resource_pool_name
  virthwver           = var.k3s01_virthwver


  network_interfaces {
    virtual_network     = var.k3s01_virtual_network
    nic_type            = var.k3s01_nic_type
  }

  notes               = var.k3s01_notes
}

## K3s Node
resource "esxi_guest" "k3s_01" {
  guest_name          = var.k3s_01_guest_name
  boot_firmware       = var.k3s_01_boot_firmware
  disk_store          = var.k3s_01_disk_store
  memsize             = var.k3s_01_memsize
  numvcpus            = var.k3s_01_numvcpus
  power               = var.k3s_01_power
  resource_pool_name  = var.k3s_01_resource_pool_name
  virthwver           = var.k3s_01_virthwver
  clone_from_vm       = var.k3s_01_clone_from_vm


  network_interfaces {
    virtual_network     = var.k3s_01_virtual_network
    nic_type            = var.k3s_01_nic_type
  }

  guestinfo = {
    "metadata" = base64encode(file("./cloud-init/k3s_01_metadata.yml"))
    "metadata.encoding" = "base64"
  }

  notes               = var.k3s_01_notes
}

## K3s Node
resource "esxi_guest" "k3s_03" {
  guest_name          = var.k3s_03_guest_name
  boot_firmware       = var.k3s_03_boot_firmware
  disk_store          = var.k3s_03_disk_store
  memsize             = var.k3s_03_memsize
  numvcpus            = var.k3s_03_numvcpus
  power               = var.k3s_03_power
  resource_pool_name  = var.k3s_03_resource_pool_name
  virthwver           = var.k3s_03_virthwver
  clone_from_vm       = var.k3s_03_clone_from_vm


  network_interfaces {
    virtual_network     = var.k3s_03_virtual_network
    nic_type            = var.k3s_03_nic_type
  }

  guestinfo = {
    "metadata" = base64encode(file("./cloud-init/k3s_03_metadata.yml"))
    "metadata.encoding" = "base64"
  }

  notes               = var.k3s_03_notes
}

# Media Server
resource "esxi_guest" "media" {
  guest_name          = var.media_guest_name
  boot_firmware       = var.media_boot_firmware
  disk_store          = var.media_disk_store
  memsize             = var.media_memsize
  numvcpus            = var.media_numvcpus
  power               = var.media_power
  resource_pool_name  = var.media_resource_pool_name
  virthwver           = var.media_virthwver

  virtual_disks {
    slot = var.media_virtual_disk_slot
    virtual_disk_id = var.media_virtual_disk_id
  }

  network_interfaces {
    virtual_network     = var.veeam_virtual_network
    nic_type            = var.veeam_nic_type
  }

  notes = var.media_notes
}



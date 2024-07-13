# Virtual Machines

## Domain Controller
resource "esxi_guest" "dc01" {
  guest_name         = var.dc01_guest_name
  boot_firmware      = var.dc01_boot_firmware
  disk_store         = var.dc01_disk_store
  memsize            = var.dc01_memsize
  numvcpus           = var.dc01_numvcpus
  power              = var.dc01_power
  resource_pool_name = var.dc01_resource_pool_name
  virthwver          = var.dc01_virthwver


  network_interfaces {
    virtual_network = var.dc01_virtual_network
    nic_type        = var.dc01_nic_type
  }

  notes = var.dc01_notes
}

## Veeam Server
resource "esxi_guest" "veeam" {
  guest_name         = var.veeam_guest_name
  boot_firmware      = var.veeam_boot_firmware
  disk_store         = var.veeam_disk_store
  memsize            = var.veeam_memsize
  numvcpus           = var.veeam_numvcpus
  power              = var.veeam_power
  resource_pool_name = var.veeam_resource_pool_name
  virthwver          = var.veeam_virthwver


  network_interfaces {
    virtual_network = var.veeam_virtual_network
    nic_type        = var.veeam_nic_type
  }

  notes = var.veeam_notes
}

# Media Server
resource "esxi_guest" "media" {
  guest_name         = var.media_guest_name
  boot_firmware      = var.media_boot_firmware
  disk_store         = var.media_disk_store
  memsize            = var.media_memsize
  numvcpus           = var.media_numvcpus
  power              = var.media_power
  resource_pool_name = var.media_resource_pool_name
  virthwver          = var.media_virthwver

  virtual_disks {
    slot            = var.media_virtual_disk_slot
    virtual_disk_id = var.media_virtual_disk_id
  }

  network_interfaces {
    virtual_network = var.game_virtual_network
    nic_type        = var.game_nic_type
  }

  notes = var.media_notes
}

# Game Server
resource "esxi_guest" "game" {
  guest_name         = var.game_guest_name
  boot_disk_size     = var.game_boot_disk_size
  boot_firmware      = var.game_boot_firmware
  disk_store         = var.game_disk_store
  memsize            = var.game_memsize
  numvcpus           = var.game_numvcpus
  power              = var.game_power
  resource_pool_name = var.game_resource_pool_name
  virthwver          = var.game_virthwver

  network_interfaces {
    virtual_network = var.game_virtual_network
    nic_type        = var.game_nic_type
  }

  notes = var.game_notes
}



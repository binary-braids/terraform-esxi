resource "esxi_guest" "vm" {
  guest_name     = var.guest_name
  boot_disk_type = var.boot_disk_type
  boot_disk_size = var.boot_disk_size
  boot_firmware  = var.boot_firmware
  disk_store     = var.disk_store
  memsize        = var.memsize
  numvcpus       = var.numvcpus

  network_interfaces {
    virtual_network = var.virtual_network
    nic_type        = var.nic_type
  }

  notes = var.notes
}
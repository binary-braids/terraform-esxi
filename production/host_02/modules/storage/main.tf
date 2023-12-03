resource "esxi_virtual_disk" "disk" {
    virtual_disk_disk_store = var.virtual_disk_disk_store
    virtual_disk_dir = var.virtual_disk_dir
    virtual_disk_size = var.virtual_disk_size
    virtual_disk_type = var.virtual_disk_type
}
variable "dc02_guest_name" {
  description = "The name of the guest VM"
  type        = string
}

variable "dc02_boot_disk_type" {
  description = "The type for the guest VM boot disk"
  type        = string
}

variable "dc02_memsize" {
  description = "The amount of memory to allocate the guest VM in MB (1024 = 1GB)"
  type        = number
}

variable "dc02_boot_firmware" {
  description = "The firmware type for the guest VM"
  type        = string
}

variable "dc02_disk_store" {
  description = "The name of the data store where the guest VM will be created"
  type        = string
}

variable "dc02_numvcpus" {
  description = "The number of vCPUs to allocate to the guest VM"
  type        = number
}

variable "dc02_power" {
  description = "Set the guest VM Power state"
  type = string
}

variable "dc02_resource_pool_name" {
  description = "The name of the Resource Pool for the guest VM"
  type = string
}

variable "dc02_virthwver" {
  description = "The hardware version of the guest VM"
  type = number
}

variable "dc02_virtual_network" {
  description = "The virtual network for the network interface"
  type        = string
}

variable "dc02_nic_type" {
  description = "The type for the network interface"
  type        = string
}

variable "dc02_notes" {
  description = "Annotated notes to add to the guest VM"
  type        = string
}



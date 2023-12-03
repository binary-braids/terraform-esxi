variable "dc01_guest_name" {
  description = "The name of the guest VM"
  type        = string
}

variable "dc01_memsize" {
  description = "The amount of memory to allocate the guest VM in MB (1024 = 1GB)"
  type        = number
}

variable "dc01_boot_firmware" {
  description = "The firmware type for the guest VM"
  type        = string
}

variable "dc01_disk_store" {
  description = "The name of the data store where the guest VM will be created"
  type        = string
}

variable "dc01_numvcpus" {
  description = "The number of vCPUs to allocate to the guest VM"
  type        = number
}

variable "dc01_power" {
  description = "Set the guest VM Power state"
  type = string
}

variable "dc01_resource_pool_name" {
  description = "The name of the Resource Pool for the guest VM"
  type = string
}

variable "dc01_virthwver" {
  description = "The hardware version of the guest VM"
  type = number
}

variable "dc01_virtual_network" {
  description = "The virtual network for the network interface"
  type        = string
}

variable "dc01_nic_type" {
  description = "The type for the network interface"
  type        = string
}

variable "dc01_notes" {
  description = "Annotated notes to add to the guest VM"
  type        = string
}



variable "guest_name" {
  description = "The name of the guest VM"
  type        = string
}

variable "boot_disk_type" {
  description = "The type for the guest VM boot disk"
  type        = string
}

variable "boot_disk_size" {
  description = "The size of the guest VM boot disk"
  type        = number
}

variable "boot_firmware" {
  description = "The firmware type for the guest VM"
  type        = string
}

variable "disk_store" {
  description = "The name of the data store where the guest VM will be created"
  type        = string
}

variable "memsize" {
  description = "The amount of memory to allocate the guest VM in MB (1024 = 1GB)"
  type        = number
}

variable "numvcpus" {
  description = "The number of vCPUs to allocate to the guest VM"
  type        = number
}

variable "virtual_network" {
  description = "The virtual network for the network interface"
  type        = string
}

variable "nic_type" {
  description = "The type for the network interface"
  type        = string
}

variable "notes" {
  description = "Annotated notes to add to the guest VM"
  type        = string
}



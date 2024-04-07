variable "media_guest_name" {
  description = "The name of the guest VM"
  type        = string
}

variable "media_memsize" {
  description = "The amount of memory to allocate the guest VM in MB (1024 = 1GB)"
  type        = number
}

variable "media_boot_firmware" {
  description = "The firmware type for the guest VM"
  type        = string
}

variable "media_disk_store" {
  description = "The name of the data store where the guest VM will be created"
  type        = string
}

variable "media_numvcpus" {
  description = "The number of vCPUs to allocate to the guest VM"
  type        = number
}

variable "media_power" {
  description = "Set the guest VM Power state"
  type        = string
}

variable "media_resource_pool_name" {
  description = "The name of the Resource Pool for the guest VM"
  type        = string
}

variable "media_virthwver" {
  description = "The hardware version of the guest VM"
  type        = number
}

variable "media_virtual_disk_slot" {
  description = "The slot for the virtual disk"
  type        = string
}

variable "media_virtual_disk_id" {
  description = "The id of the virtual disk"
  type        = string
}

variable "media_virtual_network" {
  description = "The virtual network for the network interface"
  type        = string
}

variable "media_nic_type" {
  description = "The type for the network interface"
  type        = string
}

variable "media_notes" {
  description = "Annotated notes to add to the guest VM"
  type        = string
}



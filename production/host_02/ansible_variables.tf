variable "ansible_guest_name" {
  description = "The name of the guest VM"
  type        = string
}

variable "ansible_boot_disk_type" {
  description = "The type for the guest VM boot disk"
  type        = string
}

variable "ansible_boot_disk_size" {
  description = "The size of the guest VM boot disk"
  type        = number
}

variable "ansible_memsize" {
  description = "The amount of memory to allocate the guest VM in MB (1024 = 1GB)"
  type        = number
}

variable "ansible_boot_firmware" {
  description = "The firmware type for the guest VM"
  type        = string
}

variable "ansible_disk_store" {
  description = "The name of the data store where the guest VM will be created"
  type        = string
}

variable "ansible_numvcpus" {
  description = "The number of vCPUs to allocate to the guest VM"
  type        = number
}

variable "ansible_power" {
  description = "Set the guest VM Power state"
  type = string
}

variable "ansible_resource_pool_name" {
  description = "The name of the Resource Pool for the guest VM"
  type = string
}

variable "ansible_virthwver" {
  description = "The hardware version of the guest VM"
  type = number
}

variable "ansible_virtual_network" {
  description = "The virtual network for the network interface"
  type        = string
}

variable "ansible_nic_type" {
  description = "The type for the network interface"
  type        = string
}

variable "ansible_notes" {
  description = "Annotated notes to add to the guest VM"
  type        = string
}



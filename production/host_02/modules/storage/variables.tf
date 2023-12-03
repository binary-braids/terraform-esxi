variable "virtual_disk_disk_store" {
  description = "The datastore where the virtual disk will be created"
  type        = string
}

variable "virtual_disk_dir" {
  description = "The name of the sub-directory where the virtual disk will be stored (Can be the same as the Guest VM name)"
  type        = string
}

variable "virtual_disk_size" {
  description = "The size of the virtual disk"
  type        = number
}

variable "virtual_disk_type" {
  description = "The type of virtual disk to be created"
  type        = string
}
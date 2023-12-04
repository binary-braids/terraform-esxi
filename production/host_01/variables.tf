# ESXI Host Variables
variable "esxi_hostname" {
  type        = string
  description = "hostname for ESXI host"
}

variable "esxi_hostport" {
  type        = string
  description = "SSH port for ESXI host"
}

variable "esxi_hostssl" {
  type        = string
  description = "SSL port for ESXI host"
}

variable "esxi_username" {
  type        = string
  description = "username for ESXI host"
}

variable "esxi_password" {
  type        = string
  description = "password for ESXI host"
}

# ESXI Networking Variables
variable "vswitch_name" {
  description = "The name of the vSwitch"
  type        = string
}

variable "uplink_name" {
  description = "The name of the vSwitch uplink"
  type        = string
}

variable "port_group_name" {
  description = "The name of the Port Group"
  type        = string
}

variable "port_group_vlan" {
  description = "The VLAN ID for the Port Group"
  type        = number
}



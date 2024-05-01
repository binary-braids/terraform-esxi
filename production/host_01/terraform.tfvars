# ESXI Host
esxi_hostname = "#{ESXI_HOSTNAME}#"
esxi_hostport = "22"
esxi_hostssl  = "443"
esxi_username = "#{ESXI_USERNAME}#"
esxi_password = "#{ESXI_PASSWORD}#"

# Networking
vswitch_name = "vSwitch0"
uplink_name = "vmnic0"
port_group_name = "VM Network"
port_group_vlan = 0

#Domain Controller
dc01_guest_name = "#{DC01_GUEST_NAME}#"
dc01_boot_firmware = "efi"
dc01_disk_store = "VM-240GB-SSD"
dc01_memsize = 2048
dc01_numvcpus = 2
dc01_power = "on"
dc01_resource_pool_name = "/"
dc01_virthwver = 21
dc01_virtual_network = "VM Network"
dc01_nic_type = "vmxnet3"
dc01_notes = "Domain Controller"

#Veeam Server
veeam_guest_name = "#{VEEAM_GUEST_NAME}#"
veeam_boot_firmware = "efi"
veeam_disk_store = "VM-240GB-SSD"
veeam_memsize = 5120
veeam_numvcpus = 3
veeam_power = "on"
veeam_resource_pool_name  = "/"
veeam_virthwver = 21
veeam_virtual_network = "VM Network"
veeam_nic_type = "vmxnet3"
veeam_notes = "Veeam Server"

# Media Server
media_guest_name = "#{MEDIA_GUEST_NAME}#"
media_boot_firmware = "bios"
media_disk_store = "VM-240GB-SSD2"
media_memsize = 1024
media_numvcpus = 2
media_power = "on"
media_resource_pool_name  = "/"
media_virthwver = 21
media_virtual_disk_slot = "0:1"
media_virtual_disk_id = "#{MEDIA_VIRTUAL_DISK_ID}#"
media_virtual_network = "VM Network"
media_nic_type = "vmxnet3"
media_notes = "Media Server"
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
dc02_guest_name = "#{DC02_GUEST_NAME}#"
dc02_boot_firmware = "efi"
dc02_disk_store = "VM-240GB-SSD"
dc02_memsize = 2048
dc02_numvcpus = 2
dc02_power = "on"
dc02_resource_pool_name = "/"
dc02_virthwver = 21
dc02_virtual_network = "VM Network"
dc02_nic_type = "vmxnet3"
dc02_notes = "Domain Controller"

#Certificate Server
ca_guest_name = "#{CA_GUEST_NAME}#"
ca_boot_firmware = "efi"
ca_disk_store = "VM-240GB-SSD"
ca_memsize = 2048
ca_numvcpus = 2
ca_power = "on"
ca_resource_pool_name  = "/"
ca_virthwver = 21
ca_virtual_network = "VM Network"
ca_nic_type = "vmxnet3"
ca_notes = "Certificate Server"

# ansible Server
ansible_guest_name = "#{ANSIBLE_GUEST_NAME}#"
ansible_boot_firmware = "bios"
ansible_disk_store = "VM-240GB-SSD"
ansible_memsize = 2048
ansible_numvcpus = 2
ansible_power = "on"
ansible_resource_pool_name  = "/"
ansible_virthwver = 21
ansible_virtual_network = "VM Network"
ansible_nic_type = "vmxnet3"
ansible_notes = "Ansible Server"

# Docker Host
docker_guest_name = "#{DOCKER_GUEST_NAME}#"
docker_boot_firmware = "efi"
docker_disk_store = "VM-240GB-SSD2"
docker_memsize = 4096
docker_numvcpus = 4
docker_power = "on"
docker_resource_pool_name  = "/"
docker_virthwver = 21
docker_clone_from_vm = "pkr-ubuntu-2204"
docker_virtual_network = "VM Network"
docker_nic_type = "vmxnet3"
docker_notes = "Docker Host"
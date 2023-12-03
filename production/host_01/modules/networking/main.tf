resource "esxi_vswitch" "production" {
  name = var.vswitch_name
}

resource "esxi_portgroup" "name" {
  name = var.port_group_name
  vswitch = esxi_vswitch.production.name
  vlan = var.port_group_vlan
}
data "azurerm_subnet" "sid" {
    for_each = var.vms
  name=each.value.subnet_name
  resource_group_name = each.value.resource_group_name
  virtual_network_name = each.value.virtual_network_name
} 

data "azurerm_public_ip" "pid"{
    for_each = var.vms
    name=each.value.pip_name
    resource_group_name =each.value.resource_group_name

}
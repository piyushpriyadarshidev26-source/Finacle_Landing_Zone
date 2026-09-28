variable "nic"{

}

resource "azurerm_network_interface" "nicbk" {
for_each=var.nic
  name                = each.value.nic_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                          = "internal"
    public_ip_address_id          = data.azurerm_public_ip.pip[each.key].id
    subnet_id                     = data.azurerm_subnet.dsub[each.key].id
    private_ip_address_allocation = "Dynamic"
  }
}
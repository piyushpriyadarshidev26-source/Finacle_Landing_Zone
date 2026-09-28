variable "vnet"{
    
}

resource "azurerm_virtual_network" "vntb"{
    for_each=var.vnet
    name=each.value.virtual_network_name
    location=each.value.location
    resource_group_name=each.value.resource_group_name
    address_space=each.value.address_space
}
variable "bkvm"{
    
}

resource "azurerm_linux_virtual_machine" "vm" {
    for_each=var.bkvm
  name                = each.value.virtual_machine_name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  size                = each.value.size
  admin_username      = each.value.admin_username
  admin_password      =each.value.admin_password
  disable_password_authentication=false
  network_interface_ids = [
    data.azurerm_network_interface.dnic[each.key].id,
    # azurerm_network_interface.example.id,
  ]

  
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "ubuntu-24_04-lts"
    sku       = "server"
    version   = "latest"
  }
}
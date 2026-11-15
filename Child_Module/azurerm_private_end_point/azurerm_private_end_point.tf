variable "prvt"{

}

resource "azurerm_private_endpoint" "pvt" {
    for_each=var.prvt
  name                = each.value.private_end_point_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  subnet_id           = data.azurerm_subnet.pvt[each.key].id

  private_service_connection {
     name                           = each.value.private_service_connection_name
    private_connection_resource_id = data.azurerm_storage_account.stp[each.key].id
    subresource_names              = each.value.subresource_names
    is_manual_connection           = false
  }
}
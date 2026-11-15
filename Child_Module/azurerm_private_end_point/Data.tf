data "azurerm_storage_account" "stp" {
  for_each=var.prvt
  name                = each.value.storage_account_name
  resource_group_name = each.value.resource_group_name
}



data "azurerm_subnet" "pvt" {
    for_each=var.prvt
  name                 = each.value.subnet_name
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}
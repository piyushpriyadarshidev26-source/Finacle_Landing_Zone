# variable "dsnet"{

# }

# variable "dpip"{
    
# }


data "azurerm_subnet" "dsub" {
    for_each=var.nic
  name                 = each.value.subnet_name
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}

# output "subnet_id" {
#   value = data.azurerm_subnet.example.id
# }

data "azurerm_public_ip" "pip" {
    for_each=var.nic
  name                = each.value.pip_name
  resource_group_name = each.value.resource_group_name
}


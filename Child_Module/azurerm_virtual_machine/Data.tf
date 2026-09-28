# variable "nicd"{
    
# }


data "azurerm_network_interface" "dnic" {
  for_each=var.bkvm
  name                = each.value.nic_name
  resource_group_name = each.value.resource_group_name
}

# output "subnet_id" {
#   value = data.azurerm_subnet.example.id
# }

# variable "nicd"{
    
# }


# data "azurerm_key_vault" "kvlt" {
#    name         = "AlmirahKeys"
# resource_group_name = "Almirah"
# }


# data "azurerm_key_vault_secret" "usrname" {
#   name                = "VM-Username"
#   key_vault_id = data.azurerm_key_vault.kvlt.id
# }

# data "azurerm_key_vault_secret" "pswd" {
#   name                = "VM-Password"
#  key_vault_id = data.azurerm_key_vault.kvlt.id
 
# }




data "azurerm_network_interface" "dnic" {
  for_each=var.bkvm
  name                = each.value.nic_name
  resource_group_name = each.value.resource_group_name
}

# output "subnet_id" {
#   value = data.azurerm_subnet.example.id
# }

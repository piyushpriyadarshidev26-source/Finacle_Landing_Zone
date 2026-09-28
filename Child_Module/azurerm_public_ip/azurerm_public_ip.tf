variable "pipk"{
    
}


resource "azurerm_public_ip" "pibk" {
    for_each=var.pipk
  name                = each.value.pip_name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  allocation_method   = each.value.allocation_method

  tags = {
    # environment = "Production"
  }
}


# output "subnet_id" {
#   value = data.azurerm_subnet.example.id
# }

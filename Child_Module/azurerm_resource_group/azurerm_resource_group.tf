variable "rg"{
    
}

resource "azurerm_resource_group" "rgb"{
    for_each=var.rg
    name=each.value.name
    location=each.value.location
}
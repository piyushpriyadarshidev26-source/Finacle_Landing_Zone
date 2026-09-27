module "resource_group" {
    source ="../Preprod/Child_Module/azurerm_resource_group"
    rg=var.rg
  
}

module "storage_account" {
  source = "../Preprod/Child_Module/azurerm_storage_account"
  depends_on = [ module.resource_group ]
  stg=var.stg
}

module "virtual_network"{
source="../Preprod/Child_Module/azurerm_virtual_network"
depends_on = [ module.resource_group ]
vnet=var.vnet
}



module "subnet" {
  source = "../Preprod/Child_Module/azurerm_subnet"
  depends_on = [ module.resource_group,module.storage_account,module.virtual_network]
  snet=var.snet
}

module "public_ip"{
    source = "../Preprod/Child_Module/azurerm_public_ip"
    depends_on=[module.resource_group,module.storage_account,module.virtual_network,module.subnet]
    pip=var.pip
}
module "linux_virtual_machine" {
    source = "../Preprod/Child_Module/azurerm_virtual_machine"
    depends_on = [ module.resource_group,module.storage_account,module.virtual_network,module.subnet,module.public_ip ]
    vms=var.vms
  
}

module "resource_group"{
    source="../../Child_Module/azurerm_resource_group"
    rg=var.rg
}

module "storage_account"{
    source="../../Child_Module/azurerm_storage_account"
    depends_on=[module.resource_group]
    stg=var.stg
}

module "virtual_network"{
    source="../../Child_Module/azurerm_virtual_network"
    depends_on=[module.resource_group]
    vnet=var.vnet
}

module "subnet"{
    source="../../Child_Module/azurerm_subnet"
    depends_on=[module.resource_group,module.virtual_network]
    snet=var.snet
}

module "publicip"{
    source="../../Child_Module/azurerm_public_ip"
    depends_on=[module.resource_group,module.virtual_network,module.subnet]
    pipk=var.pipk
}

module "network_interface_card"{
    source="../../Child_Module/azurerm_network_interface_card"
    depends_on=[module.resource_group,module.virtual_network,module.subnet,module.publicip]
    nic=var.nic
}

module "virtual_machine"{
    source="../../Child_Module/azurerm_virtual_machine"
    depends_on=[module.resource_group,module.virtual_network,module.subnet,module.publicip,module.network_interface_card]
    bkvm=var.bkvm
}
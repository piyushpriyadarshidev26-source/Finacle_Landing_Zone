rg={
    rg={
        name="lelo"
        location="eastus"
    }
}

stg={
stg1={
    storage_account_name="microssd25"
    location="eastus"
    resource_group_name="lelo"
    account_tier="Standard"
    account_replication_type="LRS"
    
}

}

vnet={
    vnet1={
        virtual_network_name="zPlus"
        resource_group_name="lelo"
        location="eastus"
        address_space=["10.0.0.0/16"]


    }
}

snet={
    snet1={
        subnet_name="yPlus"
        resource_group_name="lelo"
        virtual_network_name="zPlus"
        address_prefixes=["10.0.0.0/24"]

        
    }
}

pipk={
    pipk1={
        pip_name="bkpip"
        resource_group_name="lelo"
        location="eastus"
        allocation_method="Static"



    }
}

nic={
    nic1={
        nic_name="dedo45lakhlelonil"
        location="eastus"
        resource_group_name="lelo"
        pip_name="bkpip"
        virtual_network_name="zPlus"
        subnet_name="yPlus"



    }
}

bkvm={
    vm1={
virtual_machine_name="Bank420"
resource_group_name="lelo"
location="eastus"
size="Standard_D2nls_v6"
admin_username="admin420"
admin_password="Admin@123"
nic_name="dedo45lakhlelonil"
 subnet_name="yplus"
 virtual_network_name="zPlus"
 pip_name="bkpip"

    }
}

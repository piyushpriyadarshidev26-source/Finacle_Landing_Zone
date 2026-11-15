rg={
    rg={
        name="relo"
        location="indiasouthcentral"
    }
}

stg={
stg1={
    storage_account_name="microssd29"
    location="indiasouthcentral"
    resource_group_name="relo"
    account_tier="Standard"
    account_replication_type="LRS"
    
}

}

vnet={
    vnet1={
        virtual_network_name="zPlus"
        resource_group_name="relo"
        location="indiasouthcentral"
        address_space=["10.0.0.0/16"]


    }
}

snet={
    snet1={
        subnet_name="Forvm"
        resource_group_name="relo"
        virtual_network_name="zPlus"
        address_prefixes=["10.0.0.0/24"]

        
    }
 snet2={
        subnet_name="forpvtendpoint"
        resource_group_name="relo"
        virtual_network_name="zPlus"
        address_prefixes=["10.0.1.0/24"]

        
    }


}

pipk={
    pipk1={
        pip_name="bkpip"
        resource_group_name="relo"
        location="indiasouthcentral"
        allocation_method="Static"



    }
}

nic={
    nic1={
        nic_name="dedo45lakhlelonil"
        location="indiasouthcentral"
        resource_group_name="relo"
        pip_name="bkpip"
        virtual_network_name="zPlus"
        subnet_name="Forvm"



    }
}

bkvm={
    vm1={
virtual_machine_name="Bank420"
resource_group_name="relo"
location="indiasouthcentral"
size="Standard_D2nls_v6"
admin_username="admin420"
admin_password="Admin@123"
nic_name="dedo45lakhlelonil"
 subnet_name="Forvm"
 virtual_network_name="zPlus"
 pip_name="bkpip"

    }
}

prvt={
prvt1={
    private_end_point_name="NewlakeMuhmeKelwa"
    location="indiasouthcentral"
    resource_group_name="relo"
    subnet_name="forpvtendpoint"
    virtual_network_name="zplus"
    private_service_connection_name="stg-private"
    storage_account_name = "microssd29"
    subresource_names=["blob"]
}
}
variable "stg" {
  
}

resource "azurerm_storage_account" "fstg"{
    for_each=var.stg
    name=each.value.storage_account_name
    location=each.value.location
    resource_group_name =each.value.resource_group_name
    account_tier=each.value.account_tier
    account_replication_type=each.value.account_replication_type
}
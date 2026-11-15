terraform{
required_providers{
azurerm={
source="hashicorp/azurerm"
version="4.80.0"
}
}
 backend "azurerm"{
 storage_account_name="intel786"
 resource_group_name="Mandook"
 container_name="parameterpipeline"
 key="belcha.tfstate3"
 }
}

 provider "azurerm"{
 features{

 }
 }
terraform{
required_providers{
azurerm={
source="hashicorp/azurerm"
version="4.80.0"
}
}
 backend "azurerm"{
<<<<<<< HEAD
 storage_account_name="dolo650"
 resource_group_name="Dimak"
 container_name="kechua"
 key="kechua.tfstate"
=======
 storage_account_name="intel786"
 resource_group_name="Mandook"
 container_name="parameterpipeline"
 key="belcha.tfstate2"
>>>>>>> 011091058590b3c8e2bca30c6b1797b158f7f285
 }
}

 provider "azurerm"{
 features{

 }
 }
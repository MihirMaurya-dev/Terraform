terraform{
    required_providers{
        azurerm={
           source="hashicorps/azurerm"
           version="5.0.0"
        }
    }
}

provider "azurerm"{
    features{}
}

resource "azurerm_resource_group" "newrg" {
  name = rg1
  location = eastus
}

resource "azurerm_virtual_network" "vnet" {
    name = vnet1
    laoction = eastus
    resource_group_name = rg1
}
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
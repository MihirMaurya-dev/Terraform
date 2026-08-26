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
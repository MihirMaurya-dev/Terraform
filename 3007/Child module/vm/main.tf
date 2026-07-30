data "azurerm_resource_group" "rg" {
    name = var.rg_name
}
data "azurerm_network_interface" "nic" {
    name = var.nic_name
    resource_group_name = data.azurerm_resource_group.rg.name
}

resource "azurerm_linux_virtual_machine" "vm" {
  name                = var.vm_name
  resource_group_name = data.azurerm_resource_group.rg.name
  location            = data.azurerm_resource_group.rg.location
  size                = "Standard_DS1_v2"
  admin_username      = "adminuser"
  admin_password      = "Password1234!"
  disable_password_authentication = false
  network_interface_ids = [
    data.azurerm_network_interface.nic.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}

resource "azurerm_virtual_network" "vnet01" {
  name                = "vnet-${local.customer}-01"
  resource_group_name = "rg-${local.customer}-devops-env"
  location            = var.location
  address_space       = var.vnet01_cidr
  
  depends_on = [azurerm_resource_group.rg-appservice]
  tags = var.tags
}
resource "azurerm_subnet" "snet-appservice-vnet01" {
  name                  = "snet-app-${local.customer}-01"
  resource_group_name   = "rg-${local.customer}-devops-env"
  virtual_network_name  = azurerm_virtual_network.vnet01.name
  address_prefixes      = var.vnet01_app_subnet

}

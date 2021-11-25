resource "azurerm_resource_group" "rg-appservice" {
  name = "rg-${local.customer}-devops-env"
  location = var.location
  tags = var.tags
}

resource "azurerm_app_service_plan" "DOP-plan-01" {
  name                = "plan-${local.customer}-01"
  resource_group_name = "rg-${local.customer}-devops-env"
  location            = var.location

  kind = "Linux"
  reserved = true

  sku {
    tier = "Standard"
    size = "S1"
  }
  depends_on = [azurerm_resource_group.rg-appservice]
  tags = var.tags
}

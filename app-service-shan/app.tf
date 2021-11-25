resource "azurerm_app_service" "DOP-appserv-01" {
  name                      = "app-${local.customer}-01"
  resource_group_name       = "rg-${local.customer}-devops-env"
  location                  = var.location
  app_service_plan_id       = azurerm_app_service_plan.DOP-plan-01.id

  https_only = false
  
  site_config {
    always_on = true
    java_version = 11
    linux_fx_version = "TOMCAT|9.0-java11"
 
  }
  depends_on = [azurerm_resource_group.rg-appservice, azurerm_app_service_plan.DOP-plan-01]
}

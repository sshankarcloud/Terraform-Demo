terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.45.1"
    }
    azuread = {
      source = "hashicorp/azuread"
      version = "1.3.0"
    }
  }
  required_version = ">= 0.13.6"
}

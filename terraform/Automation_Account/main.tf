provider "azurerm" {
  features {}
  subscription_id = var.subid
  tenant_id       = var.tenantid
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.84.0"
    }
  }

}

terraform {
  backend "azurerm" {
  }
}


resource "azurerm_automation_account" "main" {
  name                = var.automationname
  location            = var.location
  resource_group_name = var.rgname

  sku_name = "Basic"

}
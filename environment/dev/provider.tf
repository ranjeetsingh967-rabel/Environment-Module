terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.78.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "vpn-rg"
    storage_account_name = "storagevpn123"
    container_name       = "vpncontainer"
    key                  = "dev_terraform.tfstate"
  }
}
provider "azurerm" {
  features {}
}

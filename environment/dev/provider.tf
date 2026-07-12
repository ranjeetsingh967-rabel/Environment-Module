terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.78.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "movate-rg"
    storage_account_name = "movatestorage"
    container_name       = "movatecontainer"
    key                  = "dev_terraform.tfstate"
  }
}
provider "azurerm" {
  features {}
}
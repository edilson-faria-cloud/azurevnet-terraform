terraform {
  required_version = ">=1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.94.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "remote-state"
    storage_account_name = "cloudmpio01"
    container_name       = "remote-state"
    key                  = "azure-rg-for-each/terraform.tfstate"

  }


}
provider "azurerm" {
  features {}
}
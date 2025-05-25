terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.30.0"
    }
  }
}

provider "azurerm" {
  features {}
}


variable "rg" {
    type = string
    default = "exammple-rg-abhinav"
}

resource "azurerm_resource_group" "example" {
  name     = var.rg
  location = "West Europe"
}
output "rg-name" {
  value = azurerm_resource_group.example.name
}
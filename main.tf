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
  subscription_id =  "3a3e4fbf-6797-4108-bb58-4d3a772bec96"
}


variable "rg" {
    type = string
    default = "exammple-rg-abhinav"
}

resource "azurerm_resource_group" "example" {
  name     = var.rg
  location = "West Europe"
}

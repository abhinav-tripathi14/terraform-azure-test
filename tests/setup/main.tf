terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }
  }
}
provider "azurerm" {
  features {}
    subscription_id =  "3a3e4fbf-6797-4108-bb58-4d3a772bec96"
}
resource "azurerm_resource_group" "example" {
  name     = "example-rg-abhinav"
  location = "West Europe"
}

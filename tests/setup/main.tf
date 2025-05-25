terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }
  }
}

resource "random_pet" "rg_name_prefix" {
  length = 4
}

output "rg_name_prefix" {
  value = random_pet.rg_name_prefix.id
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

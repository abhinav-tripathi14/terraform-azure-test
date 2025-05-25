run "setup_tests" {
  module {
    source = "./tests/setup"
  }
}

run "rg_name_validation" {
  command = apply

  module {
    source = "./tests/setup"
  }

  variables {
     rg_name = "example-rg-abhinav"
   }

  assert {
  condition = azurerm_resource_group.example.name == var.rg_name
  error_message = "Invalid resource group name"
  }
}

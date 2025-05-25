run "setup_tests" {
  module {
    source = "./tests/setup"
  }
}

run "rg_name_validation" {
  command = plan

  module {
    source = "./tests/setup"
  }

  # variables {
  #   endpoint = run.setup_tests.rg-name
  # }

 assert {
  condition = azurerm_resource_group.example.name == var.rg_name
  error_message = "Invalid resource group name"
  }
}

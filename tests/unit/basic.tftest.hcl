run "test_default_values" {
  command = plan

  assert {
    condition     = random_pet.example_1.length == 2
    error_message = "Default pet length should be 2"
  }

  assert {
    condition     = random_pet.example_1.prefix == null
    error_message = "Default pet prefix should be null"
  }
}

run "test_custom_values" {
  command = plan

  variables {
    pet_prefix = "test"
    pet_length = 3
  }

  assert {
    condition     = random_pet.example_1.length == 3
    error_message = "Pet length should match input variable"
  }

  assert {
    condition     = random_pet.example_1.prefix == "test"
    error_message = "Pet prefix should match input variable"
  }
}

# run "test_failure_scenario" {
#   command = plan

#   assert {
#     condition     = random_pet.example_1.length == 999
#     error_message = "This should fail - pet length will never be 999"
#   }
# }

mock_provider "random" {
  override_during = plan

  mock_resource "random_pet" {
    defaults = {
      id = "mocked-test-pet-name"
    }
  }
}

run "test_output_with_plan_mocks" {
  command = plan

  assert {
    condition     = output.random_pet_id_1 == "mocked-test-pet-name"
    error_message = "Output should match mocked value"
  }
}
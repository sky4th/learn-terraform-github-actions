terraform {
  cloud {
    organization = "sky4th"

    workspaces {
      name = "learn-terraform-github-actions"
    }
  }
}   

provider "azurerm" {
  features {}
  skip_provider_registration = true
}
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.43"  # n-2 major version
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 3.5"   # n-2 major version
    }
  }
}

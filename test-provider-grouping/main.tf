terraform {
  required_providers {
    # Azure Resource Manager
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.45.0"  # Old version to force update
    }
    
    # Azure Active Directory  
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 3.5.0"  # Old version to force update
    }
    
    # Azure API (newer provider)
    azapi = {
      source  = "azure/azapi" 
      version = "~> 2.6.1"   # Old version to force update
    }
  }
}

provider "azurerm" {
  features {}
}

provider "azuread" {}

provider "azapi" {}

# Sample resources to make it realistic
resource "azurerm_resource_group" "test" {
  name     = "rg-dependabot-grouping-test"
  location = "East US"
}

resource "azuread_group" "test" {
  display_name = "dependabot-test-group"
}

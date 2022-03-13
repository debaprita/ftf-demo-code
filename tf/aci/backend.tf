## set the remote state location
provider "azurerm" {
  features {
  }
}

terraform {
  backend "azurerm" {
    resource_group_name  = "deb-ftf-demo-tfstate-0"
    storage_account_name = "debftfdemotfstate0"
    container_name       = "tfstate"
    key                  = "debs/aci-de-0.tfstate"
  }
}

data "azurerm_container_registry" "acr" {
  name                = var.acr_name
  resource_group_name = var.rg_name
}

provider "azurerm" {
  features {}
version = "=2.46.0"
  subscription_id = "0bfbc3da-d0c9-4f27-aace-655fdf0480d8"
  client_id       = "03492af9-173d-4338-9fba-3cf5a5a136c4"
  client_secret   = "HoZ7Q~~WkPAJANd1WrKezsUNNNYsLabG3WuBh"
  tenant_id       = "91e3665f-39b5-4ab0-be1b-ee2762993f70"
}
resource "azurerm_storage_account" "agentrg" {
  name                     = "terrasa012"
  resource_group_name      = azurerm_resource_group.agentrg.name
  location                 = azurerm_resource_group.agentrg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
resource "azurerm_resource_group" "agentrg" {
  name     = "agentrg"
  location = "West Europe"
}

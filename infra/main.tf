resource "azurerm_resource_group" "static_site" {
  name     = "static-site"
  location = "westeurope"
}

resource "azurerm_storage_account" "static_site" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.static_site.name
  location                 = azurerm_resource_group.static_site.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"
  enable_https_traffic_only = true
  static_website {
        index_document = "index.html"
        error_document404_path = "404.html"
    }
}




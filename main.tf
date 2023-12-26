data "azurerm_client_config" "current" {}
#############################################################################
# key vault 
#################################################################################
resource "azurerm_key_vault" "example" {
  name                        = "examplekeyvault-sky"
  location                    = "westeurope"
  resource_group_name         = "hub-rg"
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false

  sku_name = "standard"

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
      "Get",
    ]

    secret_permissions = [
      "Get",
    ]

    storage_permissions = [
      "Get",
    ]
  }
}

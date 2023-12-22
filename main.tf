#############################################################################
# Resource Group
#################################################################################
resource "azurerm_resource_group" "hubrg" {
  name     = var.resource_group_name
  location = var.location
}
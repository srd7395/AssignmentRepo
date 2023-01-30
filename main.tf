 locals {
  name_prefix = "${var.organization}-${var.environment}-${var.app}"
}
resource "azurerm_resource_group" "rgsd" {
 name = "${local.name_prefix}-${var.rgname}"
 location = var.rglocation
 tags = var.tagging
 }

 resource "azurerm_managed_disk" "rgsd1" {
  name = "${local.name_prefix}-${var.diskname1}"
  resource_group_name = azurerm_resource_group.rgsd.name
  location = azurerm_resource_group.rgsd.location
  storage_account_type = var.satype
  create_option        = "Empty"
  disk_size_gb         = var.disksize1
  tags = var.tagging
  
 }

  resource "azurerm_managed_disk" "rgsd2" {
  name = "${local.name_prefix}-${var.diskname2}"
  resource_group_name = azurerm_resource_group.rgsd.name
  location = azurerm_resource_group.rgsd.location
  storage_account_type = var.satype
  create_option        = "Empty"
  disk_size_gb         = var.disksize2
  tags = var.tagging
  
 }

  resource "azurerm_managed_disk" "rgsd3" {
  name = "${local.name_prefix}-${var.diskname3}"
  resource_group_name = azurerm_resource_group.rgsd.name
  location = azurerm_resource_group.rgsd.location
  storage_account_type = var.satype
  create_option        = "Empty"
  disk_size_gb         = var.disksize3
  tags = var.tagging
  
 }

  resource "azurerm_managed_disk" "rgsd4" {
  name = "${local.name_prefix}-${var.diskname4}"
  resource_group_name = azurerm_resource_group.rgsd.name
  location = azurerm_resource_group.rgsd.location
  storage_account_type = var.satype
  create_option        = "Empty"
  disk_size_gb         = var.disksize4
  tags = var.tagging
  
 }
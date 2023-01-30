 locals {
  name_prefix = "${var.organization}-${var.environment}-${var.app}"
}
resource "azurerm_resource_group" "rgsd" {
 name = "${local.name_prefix}-${var.rgname}"
 location = var.rglocation
 tags = var.tagging
 }

 resource "azurerm_managed_disk" "rgsd1" {
  count = 4
  name = "${local.name_prefix}-var.diskname[0]${count.index}"
  resource_group_name = azurerm_resource_group.rgsd.name
  location = azurerm_resource_group.rgsd.location
  storage_account_type = var.satype
  create_option        = "Empty"
  disk_size_gb         = var.disksize
  tags = var.tagging
  
 }

 

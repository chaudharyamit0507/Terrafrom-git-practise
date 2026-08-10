variable "vnet" {

}


resource "azurerm_virtual_network" "amitvnet" {

for_each = var.vnet

name = each.value.name
resource_group_name = each.value.rg
location = each.value.location
address_space = each.value.address_space


}
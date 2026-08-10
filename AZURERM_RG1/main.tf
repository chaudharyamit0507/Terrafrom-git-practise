variable "rg"{}

resource "azurerm_resource_group" "amitrg" {

    for_each = var.rg
    name = each.value.name 
    location = each.value.location
}

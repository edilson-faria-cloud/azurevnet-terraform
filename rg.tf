#Criando Resource Group
resource "azurerm_resource_group" "rg-terra" {

  #Criando varios grupos de recursos passando a key e o value
  for_each = {
    "EUA"    = "East US"
    "Europa" = "West Europe"
    "Asia"   = "Japan East"
  }

  name     = each.key
  location = each.value

  tags = local.common_tags
}

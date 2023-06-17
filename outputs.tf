output "rg-eua" {
  value = azurerm_resource_group.rg-terra["EUA"].location
}
output "rg-europa" {
  value = azurerm_resource_group.rg-terra["Europa"].location
}
output "rg-asia" {
  value = azurerm_resource_group.rg-terra["Asia"].location
}
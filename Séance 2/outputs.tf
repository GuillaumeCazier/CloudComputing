# Pour l'URL de l'App Service
output "app_service_default_hostname" {
  description = "The default hostname of the App Service"
  value       = azurerm_app_service.example.default_site_hostname
}
 
# Pour CosmosDB
output "cosmosdb_account_name" {
  description = "The name of the CosmosDB account"
  value       = azurerm_cosmosdb_account.example.name
}
 
# Pour tout stocker
output "storage_account_name" {
  description = "The name of the Storage Account"
  value       = azurerm_storage_account.example.name
}
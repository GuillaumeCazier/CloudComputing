variable "resource_group_name" {

  type        = string

  description = "The name of the Resource Group"

  default     = "myResourceGroup"  

}
 
variable "location" {

  type        = string

  description = "The Azure region to deploy resources"

  default     = "West Europe" 

}
 
variable "app_service_plan_name" {

  type        = string

  description = "Name of the App Service Plan"

  default     = "appServicePlan"

}
 
variable "app_service_name" {

  type        = string

  description = "Name of the App Service"

  default     = "PythonAppGuillaumeC"

}
 
variable "cosmosdb_name" {

  type        = string

  description = "Name of the CosmosDB instance"

  default     = "myCosmosDbAccount"

}
 
variable "storage_account_name" {

  type        = string

  description = "Name of the Azure Storage Account"

  default     = "mystorageaccount"

}

 
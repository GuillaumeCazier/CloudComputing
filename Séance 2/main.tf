resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}
 
resource "azurerm_app_service_plan" "example" {
  name                = var.app_service_plan_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku {
    tier = "Basic"
    size = "B1"
  }
}
 
resource "azurerm_app_service" "example" {
  name                = var.app_service_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  app_service_plan_id = azurerm_app_service_plan.example.id
 
  app_settings = {
    "WEBSITES_ENABLE_APP_SERVICE_STORAGE" = "false"
    "PYTHON_VERSION" = "3.9"
  }
 
  site_config {
    python_version = "3.9"
  }
}
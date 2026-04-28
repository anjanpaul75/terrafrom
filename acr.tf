
# Define the existing resource group
resource "azurerm_resource_group" "adm_acr" {
  name     = "az-local-workload-rg"
  location = "southeastasia"  # Change this if needed
}

# Create the Azure Container Registry (ACR)
resource "azurerm_container_registry" "example" {
  name                     = "admacr"  # Must be globally unique, consider adjusting if needed
  resource_group_name       = azurerm_resource_group.adm_acr.name
  location                 = azurerm_resource_group.adm_acr.location
  sku                       = "Standard"    # You can change it to Standard or Premium if needed
  admin_enabled             = false       # Set to true to enable the admin user (optional)
  #tags = {
    #environment = "development"
  #}
}

# Output the ACR login server URL
#output "acr_login_server" {
  #value = azurerm_container_registry.adm_acr.login_server
#}

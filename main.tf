module "aks_arc" { 
# Make sure to use the latest AVM module version
source = "Azure/avm-res-hybridcontainerservice-provisionedclusterinstance/azurerm" 
version = "~>2.0"

# Make sure to provide all required parameters; for example, location= = "eastus"
resource_group_id = "/subscriptions/your id/resourceGroups/az-local-workload-rg" 
location = "southeastasia" 
name = "bbl-aks-cluster24460" 
logical_network_id = "/subscriptions/your id/resourceGroups/az-local-workload-rg/providers/microsoft.azurestackhci/logicalnetworks/BBL-AZPOC-SERVICE" 
custom_location_id = "/subscriptions/your id/resourceGroups/rgazlsabbl/providers/Microsoft.ExtendedLocation/customLocations/bblazdc" 
agent_pool_profiles = [{count=1}] 
ssh_public_key =  "your key"

# Optional parameters, update them as needed
enable_azure_rbac = false
enable_workload_identity = false 
enable_oidc_issuer = false 
rbac_admin_group_object_ids = ["group id"]
}

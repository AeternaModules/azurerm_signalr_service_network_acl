output "signalr_service_network_acls" {
  description = "All signalr_service_network_acl resources"
  value       = azurerm_signalr_service_network_acl.signalr_service_network_acls
}
output "signalr_service_network_acls_default_action" {
  description = "List of default_action values across all signalr_service_network_acls"
  value       = [for k, v in azurerm_signalr_service_network_acl.signalr_service_network_acls : v.default_action]
}
output "signalr_service_network_acls_private_endpoint" {
  description = "List of private_endpoint values across all signalr_service_network_acls"
  value       = [for k, v in azurerm_signalr_service_network_acl.signalr_service_network_acls : v.private_endpoint]
}
output "signalr_service_network_acls_public_network" {
  description = "List of public_network values across all signalr_service_network_acls"
  value       = [for k, v in azurerm_signalr_service_network_acl.signalr_service_network_acls : v.public_network]
}
output "signalr_service_network_acls_signalr_service_id" {
  description = "List of signalr_service_id values across all signalr_service_network_acls"
  value       = [for k, v in azurerm_signalr_service_network_acl.signalr_service_network_acls : v.signalr_service_id]
}


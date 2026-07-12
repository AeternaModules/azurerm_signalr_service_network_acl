output "signalr_service_network_acls_default_action" {
  description = "Map of default_action values across all signalr_service_network_acls, keyed the same as var.signalr_service_network_acls"
  value       = { for k, v in azurerm_signalr_service_network_acl.signalr_service_network_acls : k => v.default_action }
}
output "signalr_service_network_acls_private_endpoint" {
  description = "Map of private_endpoint values across all signalr_service_network_acls, keyed the same as var.signalr_service_network_acls"
  value       = { for k, v in azurerm_signalr_service_network_acl.signalr_service_network_acls : k => v.private_endpoint }
}
output "signalr_service_network_acls_public_network" {
  description = "Map of public_network values across all signalr_service_network_acls, keyed the same as var.signalr_service_network_acls"
  value       = { for k, v in azurerm_signalr_service_network_acl.signalr_service_network_acls : k => v.public_network }
}
output "signalr_service_network_acls_signalr_service_id" {
  description = "Map of signalr_service_id values across all signalr_service_network_acls, keyed the same as var.signalr_service_network_acls"
  value       = { for k, v in azurerm_signalr_service_network_acl.signalr_service_network_acls : k => v.signalr_service_id }
}


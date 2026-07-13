variable "signalr_service_network_acls" {
  description = <<EOT
Map of signalr_service_network_acls, attributes below
Required:
    - default_action
    - signalr_service_id
    - public_network (block):
        - allowed_request_types (optional)
        - denied_request_types (optional)
Optional:
    - private_endpoint (block):
        - allowed_request_types (optional)
        - denied_request_types (optional)
        - id (required)
EOT

  type = map(object({
    default_action     = string
    signalr_service_id = string
    public_network = object({
      allowed_request_types = optional(set(string))
      denied_request_types  = optional(set(string))
    })
    private_endpoint = optional(list(object({
      allowed_request_types = optional(set(string))
      denied_request_types  = optional(set(string))
      id                    = string
    })))
  }))
  # Note: 9 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


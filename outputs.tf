output "auth_backends_lookup_id" {
  description = "Map of id values across all auth_backends_lookup, keyed the same as var.auth_backends_lookup except keys with no id are omitted"
  value       = { for k, v in data.vault_auth_backends.auth_backends_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "auth_backends_lookup_accessors" {
  description = "Map of accessors values across all auth_backends_lookup, keyed the same as var.auth_backends_lookup except keys with no accessors are omitted"
  value       = { for k, v in data.vault_auth_backends.auth_backends_lookup : k => v.accessors if v.accessors != null && length(v.accessors) > 0 }
}
output "auth_backends_lookup_namespace" {
  description = "Map of namespace values across all auth_backends_lookup, keyed the same as var.auth_backends_lookup except keys with no namespace are omitted"
  value       = { for k, v in data.vault_auth_backends.auth_backends_lookup : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "auth_backends_lookup_paths" {
  description = "Map of paths values across all auth_backends_lookup, keyed the same as var.auth_backends_lookup except keys with no paths are omitted"
  value       = { for k, v in data.vault_auth_backends.auth_backends_lookup : k => v.paths if v.paths != null && length(v.paths) > 0 }
}
output "auth_backends_lookup_type" {
  description = "Map of type values across all auth_backends_lookup, keyed the same as var.auth_backends_lookup except keys with no type are omitted"
  value       = { for k, v in data.vault_auth_backends.auth_backends_lookup : k => v.type if v.type != null && length(v.type) > 0 }
}


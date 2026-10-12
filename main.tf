data "vault_auth_backends" "auth_backends_lookup" {
  for_each = var.auth_backends_lookup

  namespace = each.value.namespace
  type      = each.value.type
}


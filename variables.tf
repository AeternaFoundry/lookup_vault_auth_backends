variable "auth_backends_lookup" {
  description = <<EOT
Map of auth_backends_lookup, attributes below
Optional:
    - namespace
    - type
EOT

  type = map(object({
    namespace = optional(string)
    type      = optional(string)
  }))
}


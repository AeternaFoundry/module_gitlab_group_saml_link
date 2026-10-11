variable "group_saml_links" {
  description = <<EOT
Map of group_saml_links, attributes below
Required:
    - access_level
    - group
    - saml_group_name
Optional:
    - member_role_id
EOT

  type = map(object({
    access_level    = string
    group           = string
    saml_group_name = string
    member_role_id  = optional(number)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


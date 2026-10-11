resource "gitlab_group_saml_link" "group_saml_links" {
  for_each = var.group_saml_links

  access_level    = each.value.access_level
  group           = each.value.group
  saml_group_name = each.value.saml_group_name
  member_role_id  = each.value.member_role_id
}


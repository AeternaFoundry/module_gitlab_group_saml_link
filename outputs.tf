output "group_saml_links_id" {
  description = "Map of id values across all group_saml_links, keyed the same as var.group_saml_links except keys with no id are omitted"
  value       = { for k, v in gitlab_group_saml_link.group_saml_links : k => v.id if v.id != null && length(v.id) > 0 }
}
output "group_saml_links_access_level" {
  description = "Map of access_level values across all group_saml_links, keyed the same as var.group_saml_links except keys with no access_level are omitted"
  value       = { for k, v in gitlab_group_saml_link.group_saml_links : k => v.access_level if v.access_level != null && length(v.access_level) > 0 }
}
output "group_saml_links_group" {
  description = "Map of group values across all group_saml_links, keyed the same as var.group_saml_links except keys with no group are omitted"
  value       = { for k, v in gitlab_group_saml_link.group_saml_links : k => v.group if v.group != null && length(v.group) > 0 }
}
output "group_saml_links_member_role_id" {
  description = "Map of member_role_id values across all group_saml_links, keyed the same as var.group_saml_links except keys with no member_role_id are omitted"
  value       = { for k, v in gitlab_group_saml_link.group_saml_links : k => v.member_role_id if v.member_role_id != null }
}
output "group_saml_links_saml_group_name" {
  description = "Map of saml_group_name values across all group_saml_links, keyed the same as var.group_saml_links except keys with no saml_group_name are omitted"
  value       = { for k, v in gitlab_group_saml_link.group_saml_links : k => v.saml_group_name if v.saml_group_name != null && length(v.saml_group_name) > 0 }
}


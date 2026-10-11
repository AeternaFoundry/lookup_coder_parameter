output "parameter_lookup_id" {
  description = "Map of id values across all parameter_lookup, keyed the same as var.parameter_lookup except keys with no id are omitted"
  value       = { for k, v in data.coder_parameter.parameter_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "parameter_lookup_default" {
  description = "Map of default values across all parameter_lookup, keyed the same as var.parameter_lookup except keys with no default are omitted"
  value       = { for k, v in data.coder_parameter.parameter_lookup : k => v.default if v.default != null && length(v.default) > 0 }
}
output "parameter_lookup_description" {
  description = "Map of description values across all parameter_lookup, keyed the same as var.parameter_lookup except keys with no description are omitted"
  value       = { for k, v in data.coder_parameter.parameter_lookup : k => v.description if v.description != null && length(v.description) > 0 }
}
output "parameter_lookup_display_name" {
  description = "Map of display_name values across all parameter_lookup, keyed the same as var.parameter_lookup except keys with no display_name are omitted"
  value       = { for k, v in data.coder_parameter.parameter_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "parameter_lookup_ephemeral" {
  description = "Map of ephemeral values across all parameter_lookup, keyed the same as var.parameter_lookup except keys with no ephemeral are omitted"
  value       = { for k, v in data.coder_parameter.parameter_lookup : k => v.ephemeral if v.ephemeral != null }
}
output "parameter_lookup_form_type" {
  description = "Map of form_type values across all parameter_lookup, keyed the same as var.parameter_lookup except keys with no form_type are omitted"
  value       = { for k, v in data.coder_parameter.parameter_lookup : k => v.form_type if v.form_type != null && length(v.form_type) > 0 }
}
output "parameter_lookup_icon" {
  description = "Map of icon values across all parameter_lookup, keyed the same as var.parameter_lookup except keys with no icon are omitted"
  value       = { for k, v in data.coder_parameter.parameter_lookup : k => v.icon if v.icon != null && length(v.icon) > 0 }
}
output "parameter_lookup_mutable" {
  description = "Map of mutable values across all parameter_lookup, keyed the same as var.parameter_lookup except keys with no mutable are omitted"
  value       = { for k, v in data.coder_parameter.parameter_lookup : k => v.mutable if v.mutable != null }
}
output "parameter_lookup_name" {
  description = "Map of name values across all parameter_lookup, keyed the same as var.parameter_lookup except keys with no name are omitted"
  value       = { for k, v in data.coder_parameter.parameter_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "parameter_lookup_option" {
  description = "Map of option values across all parameter_lookup, keyed the same as var.parameter_lookup except keys with no option are omitted"
  value       = { for k, v in data.coder_parameter.parameter_lookup : k => v.option if v.option != null && length(v.option) > 0 }
}
output "parameter_lookup_optional" {
  description = "Map of optional values across all parameter_lookup, keyed the same as var.parameter_lookup except keys with no optional are omitted"
  value       = { for k, v in data.coder_parameter.parameter_lookup : k => v.optional if v.optional != null }
}
output "parameter_lookup_order" {
  description = "Map of order values across all parameter_lookup, keyed the same as var.parameter_lookup except keys with no order are omitted"
  value       = { for k, v in data.coder_parameter.parameter_lookup : k => v.order if v.order != null }
}
output "parameter_lookup_styling" {
  description = "Map of styling values across all parameter_lookup, keyed the same as var.parameter_lookup except keys with no styling are omitted"
  value       = { for k, v in data.coder_parameter.parameter_lookup : k => v.styling if v.styling != null && length(v.styling) > 0 }
}
output "parameter_lookup_type" {
  description = "Map of type values across all parameter_lookup, keyed the same as var.parameter_lookup except keys with no type are omitted"
  value       = { for k, v in data.coder_parameter.parameter_lookup : k => v.type if v.type != null && length(v.type) > 0 }
}
output "parameter_lookup_validation" {
  description = "Map of validation values across all parameter_lookup, keyed the same as var.parameter_lookup except keys with no validation are omitted"
  value       = { for k, v in data.coder_parameter.parameter_lookup : k => one(v.validation) if v.validation != null && length(v.validation) > 0 }
}
output "parameter_lookup_value" {
  description = "Map of value values across all parameter_lookup, keyed the same as var.parameter_lookup except keys with no value are omitted"
  value       = { for k, v in data.coder_parameter.parameter_lookup : k => v.value if v.value != null && length(v.value) > 0 }
}


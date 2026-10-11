data "coder_parameter" "parameter_lookup" {
  for_each = var.parameter_lookup

  name         = each.value.name
  default      = each.value.default
  description  = each.value.description
  display_name = each.value.display_name
  ephemeral    = each.value.ephemeral
  form_type    = each.value.form_type
  icon         = each.value.icon
  mutable      = each.value.mutable
  order        = each.value.order
  styling      = each.value.styling
  type         = each.value.type

  dynamic "option" {
    for_each = each.value.option != null ? each.value.option : []
    content {
      description = option.value.description
      icon        = option.value.icon
      name        = option.value.name
      value       = option.value.value
    }
  }

  dynamic "validation" {
    for_each = each.value.validation != null ? [each.value.validation] : []
    content {
      error     = validation.value.error
      max       = validation.value.max
      min       = validation.value.min
      monotonic = validation.value.monotonic
      regex     = validation.value.regex
    }
  }
}


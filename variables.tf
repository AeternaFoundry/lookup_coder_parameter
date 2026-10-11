variable "parameter_lookup" {
  description = <<EOT
Map of parameter_lookup, attributes below
Required:
    - name
Optional:
    - default
    - description
    - display_name
    - ephemeral
    - form_type
    - icon
    - mutable
    - order
    - styling
    - type
    - option (block):
        - description (optional)
        - icon (optional)
        - name (required)
        - value (required)
    - validation (block):
        - error (optional)
        - max (optional)
        - min (optional)
        - monotonic (optional)
        - regex (optional)
EOT

  type = map(object({
    name         = string
    default      = optional(string)
    description  = optional(string)
    display_name = optional(string)
    ephemeral    = optional(bool)
    form_type    = optional(string)
    icon         = optional(string)
    mutable      = optional(bool)
    order        = optional(number)
    styling      = optional(string)
    type         = optional(string)
    option = optional(list(object({
      description = optional(string)
      icon        = optional(string)
      name        = string
      value       = string
    })))
    validation = optional(object({
      error     = optional(string)
      max       = optional(number)
      min       = optional(number)
      monotonic = optional(string)
      regex     = optional(string)
    }))
  }))
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


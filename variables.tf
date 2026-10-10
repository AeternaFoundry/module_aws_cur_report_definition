variable "cur_report_definitions" {
  description = <<EOT
Map of cur_report_definitions, attributes below
Required:
    - additional_schema_elements
    - compression
    - format
    - report_name
    - s3_bucket
    - s3_prefix
    - s3_region
    - time_unit
Optional:
    - additional_artifacts
    - refresh_closed_reports
    - report_versioning
    - tags
    - tags_all
EOT

  type = map(object({
    additional_schema_elements = set(string)
    compression                = string
    format                     = string
    report_name                = string
    s3_bucket                  = string
    s3_prefix                  = string
    s3_region                  = string
    time_unit                  = string
    additional_artifacts       = optional(set(string))
    refresh_closed_reports     = optional(bool)
    report_versioning          = optional(string)
    tags                       = optional(map(string))
    tags_all                   = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.cur_report_definitions : (
        (length(v.report_name) >= 1 && length(v.report_name) <= 256) && (can(regex("[0-9A-Za-z!\\-_.*\\'()]+", v.report_name)))
      )
    ])
    error_message = "all of: must be between 1 and 256 characters; The name must be unique, is case sensitive, and can't include spaces."
  }
  validation {
    condition = alltrue([
      for k, v in var.cur_report_definitions : (
        (length(v.s3_prefix) >= 0 && length(v.s3_prefix) <= 256) && (can(regex("[0-9A-Za-z!\\-_.*'()]*", v.s3_prefix)))
      )
    ])
    error_message = "all of: must be between 0 and 256 characters"
  }
  # Note: 7 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


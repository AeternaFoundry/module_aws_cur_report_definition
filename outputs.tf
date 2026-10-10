output "cur_report_definitions_id" {
  description = "Map of id values across all cur_report_definitions, keyed the same as var.cur_report_definitions"
  value       = { for k, v in aws_cur_report_definition.cur_report_definitions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cur_report_definitions_additional_artifacts" {
  description = "Map of additional_artifacts values across all cur_report_definitions, keyed the same as var.cur_report_definitions"
  value       = { for k, v in aws_cur_report_definition.cur_report_definitions : k => v.additional_artifacts if v.additional_artifacts != null && length(v.additional_artifacts) > 0 }
}
output "cur_report_definitions_additional_schema_elements" {
  description = "Map of additional_schema_elements values across all cur_report_definitions, keyed the same as var.cur_report_definitions"
  value       = { for k, v in aws_cur_report_definition.cur_report_definitions : k => v.additional_schema_elements if v.additional_schema_elements != null && length(v.additional_schema_elements) > 0 }
}
output "cur_report_definitions_arn" {
  description = "Map of arn values across all cur_report_definitions, keyed the same as var.cur_report_definitions"
  value       = { for k, v in aws_cur_report_definition.cur_report_definitions : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "cur_report_definitions_compression" {
  description = "Map of compression values across all cur_report_definitions, keyed the same as var.cur_report_definitions"
  value       = { for k, v in aws_cur_report_definition.cur_report_definitions : k => v.compression if v.compression != null && length(v.compression) > 0 }
}
output "cur_report_definitions_format" {
  description = "Map of format values across all cur_report_definitions, keyed the same as var.cur_report_definitions"
  value       = { for k, v in aws_cur_report_definition.cur_report_definitions : k => v.format if v.format != null && length(v.format) > 0 }
}
output "cur_report_definitions_refresh_closed_reports" {
  description = "Map of refresh_closed_reports values across all cur_report_definitions, keyed the same as var.cur_report_definitions"
  value       = { for k, v in aws_cur_report_definition.cur_report_definitions : k => v.refresh_closed_reports if v.refresh_closed_reports != null }
}
output "cur_report_definitions_report_name" {
  description = "Map of report_name values across all cur_report_definitions, keyed the same as var.cur_report_definitions"
  value       = { for k, v in aws_cur_report_definition.cur_report_definitions : k => v.report_name if v.report_name != null && length(v.report_name) > 0 }
}
output "cur_report_definitions_report_versioning" {
  description = "Map of report_versioning values across all cur_report_definitions, keyed the same as var.cur_report_definitions"
  value       = { for k, v in aws_cur_report_definition.cur_report_definitions : k => v.report_versioning if v.report_versioning != null && length(v.report_versioning) > 0 }
}
output "cur_report_definitions_s3_bucket" {
  description = "Map of s3_bucket values across all cur_report_definitions, keyed the same as var.cur_report_definitions"
  value       = { for k, v in aws_cur_report_definition.cur_report_definitions : k => v.s3_bucket if v.s3_bucket != null && length(v.s3_bucket) > 0 }
}
output "cur_report_definitions_s3_prefix" {
  description = "Map of s3_prefix values across all cur_report_definitions, keyed the same as var.cur_report_definitions"
  value       = { for k, v in aws_cur_report_definition.cur_report_definitions : k => v.s3_prefix if v.s3_prefix != null && length(v.s3_prefix) > 0 }
}
output "cur_report_definitions_s3_region" {
  description = "Map of s3_region values across all cur_report_definitions, keyed the same as var.cur_report_definitions"
  value       = { for k, v in aws_cur_report_definition.cur_report_definitions : k => v.s3_region if v.s3_region != null && length(v.s3_region) > 0 }
}
output "cur_report_definitions_tags" {
  description = "Map of tags values across all cur_report_definitions, keyed the same as var.cur_report_definitions"
  value       = { for k, v in aws_cur_report_definition.cur_report_definitions : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "cur_report_definitions_tags_all" {
  description = "Map of tags_all values across all cur_report_definitions, keyed the same as var.cur_report_definitions"
  value       = { for k, v in aws_cur_report_definition.cur_report_definitions : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "cur_report_definitions_time_unit" {
  description = "Map of time_unit values across all cur_report_definitions, keyed the same as var.cur_report_definitions"
  value       = { for k, v in aws_cur_report_definition.cur_report_definitions : k => v.time_unit if v.time_unit != null && length(v.time_unit) > 0 }
}


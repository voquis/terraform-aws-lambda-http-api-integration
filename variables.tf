# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# ---------------------------------------------------------------------------------------------------------------------

variable "api_id" {
  description = "HTTP API (v2) id"
  type        = string
}

variable "function_name" {
  description = "Lambda function name"
  type        = string
}

variable "invoke_arn" {
  description = "Lambda function invoke ARN"
  type        = string
}

variable "source_arn" {
  description = "HTTP API (v2) gateway execution ARN"
  type        = string
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# ---------------------------------------------------------------------------------------------------------------------

variable "integration_method" {
  description = "Method in which HTTP API gateway will proxy requests to Lambda function"
  type        = string
  default     = "POST"
}

variable "integration_type" {
  description = "Type of integration between HTTP API gateway and Lambda function"
  type        = string
  default     = "AWS_PROXY"
}

variable "payload_format_version" {
  description = "HTTP API integration version"
  type        = string
  default     = "2.0"
}


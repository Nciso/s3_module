variable "region" {
  description = "The AWS region where the S3 buckets should be created."
  type        = string
}

variable "bucket_name" {
  description = "The name for the S3 bucket to host the static site."
  type        = string
}

variable "html_content" {
  description = "The HTML content to be uploaded to the S3 bucket."
  type        = string
}

variable "error_document" {
  description = "The error document page for the S3 bucket."
  type        = string
  default     = "error.html"
}

variable "object_expiration_days" {
  description = "The number of days after which objects in the S3 bucket will expire."
  type        = number
  default     = 365
}

variable "custom_headers" {
  description = "Custom headers to be set on the S3 bucket objects."
  type        = map(any)
  default     = {}
}

variable "logging_bucket" {
  description = "The name for the optional S3 bucket to store CloudFront access logs. Leave it empty to skip logging configuration."
  type        = string
  default     = ""
}

variable "logging_prefix" {
  description = "The prefix to be used for CloudFront access logs in the logging bucket."
  type        = string
  default     = "cloudfront-logs/"
}

variable "log_expiration_days" {
  description = "The number of days after which CloudFront access logs will expire."
  type        = number
  default     = 90
}

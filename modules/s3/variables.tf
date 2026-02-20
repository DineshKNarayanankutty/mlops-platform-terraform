variable "bucket_name" {
  description = "mlops-tf-platform-bucket"
  type        = string
}

variable "versioning_enabled" {
  description = "Enable versioning"
  type        = bool
  default     = true
}
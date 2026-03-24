variable "environment" {
  description = "Deployment environment (dev/staging/production)"
  type        = string
  validation {
    condition     = contains(["dev","staging","production"], var.environment)
    error_message = "Must be dev, staging, or production."
  }
}

variable "db_name"            { type = string }
variable "db_username"        { type = string }
variable "db_password"        { type = string; sensitive = true }
variable "postgres_version"   { type = string; default = "15.4" }
variable "instance_class"     { type = string; default = "db.t3.medium" }
variable "allocated_storage"  { type = number; default = 100 }
variable "multi_az"           { type = bool;   default = false }
variable "backup_retention_days" { type = number; default = 7 }
variable "kms_key_arn"        { type = string; default = null }
variable "monitoring_role_arn"{ type = string }
variable "availability_zone"  { type = string; default = null }

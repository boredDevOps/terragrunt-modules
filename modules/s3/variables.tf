variable "name" {
  description = "Bucket name"
  type        = string
  default     = ""
}

variable "acl" {
  description = "Acl type"
  type        = string
  default     = ""
}

variable "block_public_acls" {
  description = "Block public acls"
  type        = bool
  default     = false
}

variable "block_public_policy" {
  description = "Block public policy"
  type        = bool
  default     = false
}

variable "ignore_public_acls" {
  description = "Block public acls"
  type        = bool
  default     = false
}

variable "restrict_public_buckets" {
  description = "Restrict public access"
  type        = bool
  default     = false
}

variable "versioning_configuration" {
  description = "Versioning configuration"
  type        = string
  default     = ""
}

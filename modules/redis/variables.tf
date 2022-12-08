variable "cluster_id" {
  description = "Cluster name"
  type        = string
  default     = "true"
}

variable "engine" {
  description = "Engine type"
  type        = string
  default     = ""
}

variable "node_type" {
  description = "Node type"
  type        = string
  default     = ""
}

variable "num_cache_nodes" {
  description = "Cache nodes"
  type        = number
  default     = 1
}

variable "parameter_group_name" {
  description = "Parameter group name"
  type        = string
  default     = ""
}

variable "engine_version" {
  description = "Engine version"
  type        = string
  default     = ""
}

variable "port" {
  description = "Redis port"
  type        = number
  default     = 6379
}

variable "subnet_group_name" {
  description = "Subnet group"
  type        = string
  default     = ""
}

variable "security_group_ids" {
  description = "Security group id"
  type        = list(string)
  default     = []
}

variable "snapshot_retention_limit" {
  description = "Snapshot limit"
  type        = number
  default     = 0
}

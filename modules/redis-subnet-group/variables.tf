variable "name" {
  description = "Subnet name"
  type        = string
  default     = ""
}


variable "subnet_ids" {
  description = "Subnet id"
  type        = list(string)
  default     = []
}

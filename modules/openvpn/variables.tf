variable "ami" {
  type        = string
  description = "Ami image"
  default     = ""
}
variable "instance_type" {
  type        = string
  description = "Instance type"
  default     = ""
}
variable "vpc_security_group_ids" {
  type    = list(string)
  default = []
}
variable "associate_public_ip_address" {
  type    = bool
  default = true
}
variable "subnet_id" {
  type    = string
  default = ""
}
variable "key_name" {
  type    = string
  default = ""
}

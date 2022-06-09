variable "app_id" {
  type        = string
  description = "TYI"
}

variable "chargeback_id" {
  type        = string
  description = "TYI-1"
}

variable "prouct_name" {
  type        = string
  description = "TYI-1"
}

variable "tags" {
  description = "Tags to set on the bucket."
  type        = map(string)
  default     = {}
}
variable "name_prefix" {
  type    = string
  default = "215209696359"
}
variable "acl_value" {
  default = "private"
}
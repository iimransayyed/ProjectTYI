variable "app_id" {
  type        = string
  description = "TYI"
}
variable "product_name" {
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
  default = ""
}
variable "acl_value" {
  default = ""
}
variable "versioning" {
    type        = bool
    description = "(Optional) A state of versioning."
}
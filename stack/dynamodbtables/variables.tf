variable "name_prefix" {
  type    = string
  default = ""
}

variable "app_id" {
  type    = string
  default = ""
}

variable "product_name" {
  type    = string
  default = ""
}

variable "tags" {
  description = "Tags to set on the bucket."
  type        = map(string)
  default     = {}
}
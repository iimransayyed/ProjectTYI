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
  description = "Tags to set on the resource."
  type        = map(string)
  default     = {}
}

variable "runtime" {
  type    = string
  default = ""
}

variable "timeout" {
  default = ""
}

variable "handler_name" {
  type    = string
  default = ""
}

variable "environment" {
  type    = string
  default = ""
}
variable "sender_email" {
  type    = string
  default = ""
}

variable "receiver_email" {
  type    = string
  default = ""
}
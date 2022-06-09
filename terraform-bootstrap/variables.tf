variable "app_id" {
  type = string
  description = "TYI"
}

variable "chargeback_id" {
  type = string
  description = "TYI-1"
}

variable "prouct_name" {
  type = string
  description = "TYI-1"
}

variable "tags" {
  description = "Tags to set on the bootstrap resource."
  type        = map(string)
  default     = {}
}

variable "name_prefix" {
  type = string
  default = "215209696359"
}

# variable "name_prefix" {
#   type = string
#   description = "could be used to allow multiples tables or s3 buckets"
#   default = "" 
#   validation {
#     condition = var.name_prefix == "" ? true : can(regex("-$", var.name_prefix))
#     error_message = "Value must end with hyphen (-)."
#   }

#   validation {
#     condition = var.name_prefix != null
#     error_message = "This must be either empty string or a valid string ending with hyphen (-)."
#   }

# }
variable "acl_value" {
    default = "private"
}
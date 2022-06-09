locals {
  bucket_name = "${var.name_prefix}-${terraform.workspace}-terraform-state"
  table_name  = "${var.name_prefix}-${terraform.workspace}-terraform-state-lock"
}
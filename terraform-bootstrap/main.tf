resource "aws_s3_bucket" "terraform_state" {
  bucket = local.bucket_name
  acl    = var.acl_value
  tags   = var.tags
}

resource "aws_dynamodb_table" "terraform-lock" {
  attribute {
    name = "LockID"
    type = "S"
  }

  hash_key       = "LockID"
  name           = local.table_name
  read_capacity  = 1
  write_capacity = 1
  tags           = var.tags
}
resource "aws_s3_bucket" "terraform_state" {
  bucket = local.bucket_name
  acl    = var.acl_value  
  force_destroy = "true"
  versioning {
        enabled = var.versioning
    }    
  tags   = var.tags
}

resource "aws_s3_bucket" "log_bucket" {
  bucket = local.log_bucket_name
  acl    = var.acl_value  
  force_destroy = "true"
  versioning {
        enabled = var.versioning
    }    
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
resource "aws_dynamodb_table" "EasySurvey" {
  attribute {
    name = "Username"
    type = "S"
  }

  hash_key       = "Username"
  name           = local.table_name
  read_capacity  = 1
  write_capacity = 1
  tags           = var.tags
}
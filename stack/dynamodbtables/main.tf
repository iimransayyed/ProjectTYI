resource "aws_dynamodb_table" "EasySurvey" {
  attribute {
    name = "Name"
    type = "S"
  }

  attribute {
    name = "City"
    type = "S"
  }

  attribute {
    name = "Pincode"
    type = "N"
  }
  
global_secondary_index {
  name               = "CityIndex"
  hash_key           = "City"
  range_key          = "Pincode"
  write_capacity     = 2
  read_capacity      = 2
  projection_type    = "INCLUDE"
  non_key_attributes = ["Name"]
}   

  name           = local.table_name
  hash_key       = "Name"
  range_key      = "City"
  read_capacity  = "2"
  write_capacity = "2"
  billing_mode   = "PROVISIONED"
  tags           = var.tags
} 
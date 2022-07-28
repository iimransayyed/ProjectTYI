app_id = "TYI"
product_name = "TYI-1"
region = "ap-southeast-1"
tags = {
    TerraformManaged = "True"
    App_id = "TYI"
    product_name = "TYI-1"
}
#AWS Resource Prefix
name_prefix = "215209696359"

## TF State S3 Bucket
acl_value = "private"
versioning = "false"

#Lambda Function
runtime = "python3.6"
timeout = "900"
handler_name = "lambda_function"
environment = "dev"
sender_email = "iimransayyed@outlook.com"
receiver_email = "iimransayyed@outlook.com"
name_prefix = "215209696359"
app_id = "TYI"
product_name = "EasySurvey"
region = "ap-southeast-1"
tags = {
    TerraformManaged = "True"
    App_id = "TYI"
    Product_name = "EasySurvey"
    Backup = "false"
}

#Lambda Function
runtime = "python3.6"
timeout = "900"
handler_name = "lambda_function"
environment = "dev"
sender_email = "iimransayyed@outlook.com"
receiver_email = "iimransayyed@outlook.com"
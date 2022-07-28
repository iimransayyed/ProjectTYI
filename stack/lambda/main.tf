# Creating Lambda IAM resource
resource "aws_iam_role" "lambda_iam" {
  name = local.lambda_role_name

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}

resource "aws_iam_role_policy" "revoke_keys_role_policy" {
  name = local.lambda_iam_policy_name
  role = aws_iam_role.lambda_iam.id

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "s3:*",
        "ses:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}

# Creating Lambda resource
resource "aws_lambda_function" "EasySurvey_lambda" {
  function_name    = local.lambda_name
  role             = aws_iam_role.lambda_iam.arn
  handler          = "src/${var.handler_name}.lambda_handler"
  runtime          = "python3.6"
  timeout          = "900"
  filename         = "src.zip"
  source_code_hash = filebase64sha256("src.zip")
  tags             = var.tags
  environment {
    variables = {
      env            = var.environment
      SENDER_EMAIL   = var.sender_email
      RECEIVER_EMAIL = var.receiver_email
    }
  }
}

resource "aws_cloudwatch_log_group" "EasySurvey_lambda_cw_logs" {
  name              = "/aws/lambda/${local.lambda_name}"
  retention_in_days = 14
}
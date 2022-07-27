locals {
  lambda_name            = "${var.name_prefix}-${terraform.workspace}-TYI-EasySurvey"
  lambda_role_name       = "${var.name_prefix}-${terraform.workspace}-TYI-EasySurvey-lambdarole"
  lambda_iam_policy_name = "${var.name_prefix}-${terraform.workspace}-TYI-EasySurvey-lambdarolepolicy"
}  
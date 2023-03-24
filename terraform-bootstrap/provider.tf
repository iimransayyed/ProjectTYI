terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

terraform {
  backend "s3" {
    key = "terraform-bootstrap/terraform.tfstate"
  }
}


# Configure the AWS Provider
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

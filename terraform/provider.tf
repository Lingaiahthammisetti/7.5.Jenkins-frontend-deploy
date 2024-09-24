terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.67.0"
    }
  }
backend "s3" {
  bucket = "expense-infra-dev-remote-state"
  key = "expense-infra-dev-frontend"
  region = "us-east-1"
  dynamodb_table="expense-infra-dev-remote-state-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}


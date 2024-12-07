terraform {
  required_version = "~> 1.9.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "georege-79-terraform-state-s3-bucket-1"
    region         = "eu-west-1"
    key            = "eks/terraform.tfstate"
    dynamodb_table = "tlc-terraform-locks"
    encrypt        = true
  }
}

provider "aws" {
  region  = var.aws-region
}

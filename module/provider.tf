terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAY3IBA2KMQBETYRO2"
  secret_key = "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"
}
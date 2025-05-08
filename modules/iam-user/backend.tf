terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  required_version = ">= 1.4.0"

  backend "s3" {
    # S3 bucket, key (path), and region will be dynamically set .
  }
}

provider "aws" {
  region  = var.region
}

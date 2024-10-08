terraform {
  backend "s3" {
    bucket         = "vishnu-bkt"
    region         = "us-east-2"
    key            = "kops"
    dynamodb_table = "Lock-Files"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}

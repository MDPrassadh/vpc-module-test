terraform {
  required_version = ">1.3.9"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  backend "s3" {
    bucket = "vpc-module-state-backup"
    key    = "expense-vpc-module-key"
    region = "us-east-1"
    #use_lockfile = true
    dynamodb_table = "vpc-module-locking"

  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "default"
}
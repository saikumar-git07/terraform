terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.16.0"
    }
  }
  backend "s3" {
    bucket = "devopswithaws.store"
    key    = "dynamic-loop"
    region = "us-east-1"
    dynamodb_table = "devopswithaws-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}

  # Configuration options

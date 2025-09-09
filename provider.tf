terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.12.0"
    }
  }
  backend "s3" {
    bucket = "prasnna-s3-bucket"
    key    = "vpc-test"
    region = "us-east-1"
    encrypt = true
    use_lockfile   = true
    
  }
}

provider "aws" {
  region = "us-east-1" 
}
terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  # Uncomment for remote state (recommended for teams)
  backend "s3" {
  bucket       = "my-terraform-bucket-23"
  key          = "virginia"
  region       = "us-east-1"
  use_lockfile = true
  encrypt      = true
}
   
}

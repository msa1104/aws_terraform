terraform {
  cloud {
    organization = "msa-1"

    workspaces {
      name = "aws_terraform"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.28.0"
    }
  }

  required_version = ">= 0.14.0"
}

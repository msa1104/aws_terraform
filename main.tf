terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  #   required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-west-2"
}

  
resource "aws_cloudwatch_dashboard" "cw_dashboard" {
  for_each       = var.dashboard_list
  dashboard_name = each.value.name
  dashboard_body = file("${path.module}${each.value.filelocation}")
  }

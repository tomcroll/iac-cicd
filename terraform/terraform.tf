terraform {
  required_version = "~> 1.0"
  backend "s3" {
    bucket = "tc-tf-state-bucket"
    key    = "iac-cicd/terraform.tfstate"
    region = "us-east-2"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.7"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.3"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.16"
    }
  }
}
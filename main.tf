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
  region = "us-east-1"
}


resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name         = "controledepeso"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id"
  range_key    = "data_pesagem"

  attribute {
    name = "id"
    type = "S"
  }

  attribute {
    name = "data_pesagem"
    type = "S"
  }

  tags = {
    Projeto     = "Estudo AWS Developer"
    Environment = "dev"
  }
}
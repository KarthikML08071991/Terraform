# Terraform Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws= {
      source = "hashicorp/aws"
      version = ">= 0.0"    
  }
}
}

# Provider Block

provider "aws"{
  region = "ap-south-1"
  profile = "default"
}

/*
Note-1:  AWS Credentials Profile (profile = "default") configured on your local desktop terminal  
$HOME/.aws/credentials
*/

terraform {
  required_providers  {
    aws={

        source = "hashicorp/aws"
      version = "5.98.0"
    }
    
  }
  backend "s3"{

    bucket = "devops73-remote-state"
    key    = "roboshop-qa-vpc"
    region = "us-east-1"
    encrypt        = true
    use_lockfile = true 
    }
}
provider "aws" {
  region = "us-east-1"
}
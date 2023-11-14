terraform {
  backend "s3" {
    bucket         = "website-aldo"   
    key            = "path/to/my/aws-terraform.tfstate"     
    region         = "us-east-1"           
  }
}
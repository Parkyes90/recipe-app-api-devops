terraform {
  backend "s3" {
    bucket = "parkyes90-recipe-app-api-devops"
    key= "recipe-app.tfstate"
    region = "ap-northeast-2"
    encrypt = true
    dynamodb_table = "recipe-app-api-devops-tf-state-lock"
  }
}

provider "aws" {
  region = "ap-northeast-2"
  version = "~> 2.54.0"
}
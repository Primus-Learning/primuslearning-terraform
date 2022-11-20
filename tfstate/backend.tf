# Below is Backend block
terraform {
  backend "s3" {
    bucket = "primus-demo-backend-feb"
    key = "prod/demo.tfstate"
    region = "us-east-1"
    dynamodb_table = "tfstate"
  }
}
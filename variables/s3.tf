resource "aws_s3_bucket" "b" {
  bucket = var.bucketname

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

variable "bucketname" {
  description = "s3 bucket name"
  type = string
}
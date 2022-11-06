resource "aws_iam_user" "demouser" {
  name = var.username
  count = var.numberofusers
  force_destry = var.destroy

  tags = {
    tag-key = "tf-user"
  }
}

resource "aws_instance" "myinstance" {
  ami           = var.regionandami["us-east-1"]
  instance_type = "t2.micro"
  availability_zone = var.zones[0]

  tags = {
    Name = "web-server"
  }
}
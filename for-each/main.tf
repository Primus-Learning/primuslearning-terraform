resource "aws_instance" "test" {
  for_each = var.instance
  ami           = each.value.ami
  instance_type = each.value.type
  tags = {
    Name = each.key
  }
}


# resource "aws_instance" "test" {
#   for_each = toset(["server-1", "server-2","server-3"])
#   ami           = "ami-00f7e5c52c0f43726"
#   instance_type = "t2.micro"
#   tags = {
#     Name = each.key
#   }
# }



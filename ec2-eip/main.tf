resource "aws_instance" "myinstance" {
  ami           = "ami-081dc0707789c2daf"
  instance_type = "t2.micro"

  tags = {
    Name = "web-server"
  }
}


resource "aws_eip" "lb" {
  instance = aws_instance.myinstance.id
  vpc      = true
}
resource "aws_instance" "app_server" {
  ami           = data.aws_ami.app_ami.id
  instance_type = "t2.micro"
 
  tags = {
    Name = "demo-server"
  }
}

data "aws_ami" "app_ami" {
  most_recent = true
  

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

 owners = ["782511650046"]
}

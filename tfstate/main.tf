resource "aws_ebs_volume" "demovolume" {
  availability_zone = "us-east-1a"
  size              = 40

  tags = {
    Name = "primus-demo2-ebs"
  }
}
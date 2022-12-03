variable "instance" {
  default = {
    "server-1" = {type = "t2.micro" , ami = "ami-03c1fac8dd915ff60"},
    "server-2" = {type = "t2.medium" , ami = "ami-03c1fac8dd915ff60"},
    "server-3" = {type = "t2.nano" , ami = "ami-03c1fac8dd915ff60"}
  }
}


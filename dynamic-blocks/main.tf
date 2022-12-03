locals {
    inbound_ports = [80, 443]
    outbound_ports = [443, 1433]
}
resource "aws_vpc" "my_vpc" {
  cidr_block = "20.34.0.0/16"
}
resource "aws_security_group" "sg-webserver" {
    vpc_id = aws_vpc.my_vpc.id
    name = "webserver"
    description = "Security Group for Web Servers"

dynamic "ingress" {
    for_each = local.inbound_ports
    content {
    from_port = ingress.value
    to_port = ingress.value
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
    }
}

dynamic "egress" {
    for_each = local.outbound_ports
    content {
    from_port = egress.value
    to_port = egress.value
    protocol = "tcp"
    cidr_blocks = [ "20.34.0.0/16" ]
    }
    }
}
variable "components" {
  default = ["frontend", "mongodb"]
}

#resource "aws_instance" "instance" {
#  count= length(var.components)
#
#  ami           = "ami-081609eef2e3cc958"
#  instance_type = "t3.small"
#  vpc_security_group_ids = ["sg-02b5746c2dc0c1fad"]
#
#  tags = {
#    Name = element(var.components,count.index)
#  }
#}

resource "aws_security_group" "allow_tls" {
  count= length(var.components)
  name = element(var.components,count.index)
}
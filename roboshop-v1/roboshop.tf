resource "aws_instance" "frontend" {
  ami           = "ami-081609eef2e3cc958"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-02b5746c2dc0c1fad"]

  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "mongodb" {
  ami           = "ami-081609eef2e3cc958"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-02b5746c2dc0c1fad"]
  tags = {
    Name = "mongodb"
  }
}

resource "aws_instance" "catalogue" {
  ami           = "ami-081609eef2e3cc958"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-02b5746c2dc0c1fad"]
  tags = {
    Name = "catalogue"
  }
}

resource "aws_instance" "redis" {
  ami           = "ami-081609eef2e3cc958"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-02b5746c2dc0c1fad"]
  tags = {
    Name = "redis"
  }
}

resource "aws_instance" "user" {
  ami           = "ami-081609eef2e3cc958"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-02b5746c2dc0c1fad"]
  tags = {
    Name = "user"
  }
}

resource "aws_instance" "cart" {
  ami           = "ami-081609eef2e3cc958"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-02b5746c2dc0c1fad"]
  tags = {
    Name = "cart"
  }
}

resource "aws_instance" "mysql" {
  ami           = "ami-081609eef2e3cc958"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-02b5746c2dc0c1fad"]
  tags = {
    Name = "mysql"
  }
}

resource "aws_instance" "shipping" {
  ami           = "ami-081609eef2e3cc958"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-02b5746c2dc0c1fad"]
  tags = {
    Name = "shipping"
  }
}

resource "aws_instance" "rabbitmq" {
  ami           = "ami-081609eef2e3cc958"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-02b5746c2dc0c1fad"]
  tags = {
    Name = "rabbitmq"
  }
}

resource "aws_instance" "payment" {
  ami           = "ami-081609eef2e3cc958"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-02b5746c2dc0c1fad"]
  tags = {
    Name = "payment"
  }
}

resource "aws_instance" "dispatch" {
  ami           = "ami-081609eef2e3cc958"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-02b5746c2dc0c1fad"]
  tags = {
    Name = "dispatch"
  }
}
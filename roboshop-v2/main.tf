variable "ami" {
  default = "ami-081609eef2e3cc958"
}

variable "security_groups" {
  default = [ "sg-02b5746c2dc0c1fad" ]
}

variable "instance_type" {
  default = "t3.small"
}

variable "zone_id" {
  default = "Z0243240SL2ZOPCKERO1"
}

resource "aws_instance" "frontend" {
  ami           = "ami-081609eef2e3cc958"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-02b5746c2dc0c1fad"]

  tags = {
    Name = "frontend"
  }
}
resource "aws_route53_record" "frontend" {
  zone_id = "Z0243240SL2ZOPCKERO1"
  name    = "frontend-dev.chandana24.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "mongodb" {
  ami           = "ami-081609eef2e3cc958"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-02b5746c2dc0c1fad"]
  tags = {
    Name = "mongodb"
  }
}
resource "aws_route53_record" "mongodb" {
  zone_id = "Z0243240SL2ZOPCKERO1"
  name    = "mongodb-dev.chandana24.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}

resource "aws_instance" "catalogue" {
  ami           = "ami-081609eef2e3cc958"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-02b5746c2dc0c1fad"]
  tags = {
    Name = "catalogue"
  }
}
resource "aws_route53_record" "catalogue" {
  zone_id = "Z0243240SL2ZOPCKERO1"
  name    = "catalogue-dev.chandana24.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
}

resource "aws_instance" "redis" {
  ami           = "ami-081609eef2e3cc958"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-02b5746c2dc0c1fad"]
  tags = {
    Name = "redis"
  }
}
resource "aws_route53_record" "redis" {
  zone_id = "Z0243240SL2ZOPCKERO1"
  name    = "redis-dev.chandana24.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}

resource "aws_instance" "user" {
  ami           = "ami-081609eef2e3cc958"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-02b5746c2dc0c1fad"]
  tags = {
    Name = "user"
  }
}
resource "aws_route53_record" "user" {
  zone_id = "Z0243240SL2ZOPCKERO1"
  name    = "user-dev.chandana24.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}

resource "aws_instance" "cart" {
  ami           = "ami-081609eef2e3cc958"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-02b5746c2dc0c1fad"]
  tags = {
    Name = "cart"
  }
}
resource "aws_route53_record" "cart" {
  zone_id = "Z0243240SL2ZOPCKERO1"
  name    = "cart-dev.chandana24.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
}

resource "aws_instance" "mysql" {
  ami           = "ami-081609eef2e3cc958"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-02b5746c2dc0c1fad"]
  tags = {
    Name = "mysql"
  }
}
resource "aws_route53_record" "mysql" {
  zone_id = "Z0243240SL2ZOPCKERO1"
  name    = "mysql-dev.chandana24.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}

resource "aws_instance" "shipping" {
  ami           = "ami-081609eef2e3cc958"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-02b5746c2dc0c1fad"]
  tags = {
    Name = "shipping"
  }
}
resource "aws_route53_record" "shipping" {
  zone_id = "Z0243240SL2ZOPCKERO1"
  name    = "shipping-dev.chandana24.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}

resource "aws_instance" "rabbitmq" {
  ami           = "ami-081609eef2e3cc958"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-02b5746c2dc0c1fad"]
  tags = {
    Name = "rabbitmq"
  }
}
resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z0243240SL2ZOPCKERO1"
  name    = "rabbitmq-dev.chandana24.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}

resource "aws_instance" "payment" {
  ami           = "ami-081609eef2e3cc958"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-02b5746c2dc0c1fad"]
  tags = {
    Name = "payment"
  }
}
resource "aws_route53_record" "payment" {
  zone_id = "Z0243240SL2ZOPCKERO1"
  name    = "payment-dev.chandana24.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}

resource "aws_instance" "dispatch" {
  ami           = "ami-081609eef2e3cc958"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-02b5746c2dc0c1fad"]
  tags = {
    Name = "dispatch"
  }
}

resource "aws_route53_record" "dispatch" {
  zone_id = "Z0243240SL2ZOPCKERO1"
  name    = "dispatch-dev.chandana24.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.dispatch.private_ip]
}
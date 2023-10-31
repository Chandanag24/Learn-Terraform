terraform {
  backend "s3" {
    bucket = "tf-state-dvp"
    key    = "state/terrafm.tfstate"
    region = "us-east-1"
  }
}

variable "test" {
  default = "Hi Chandana"
}

output "test" {
  value = var.test
}
provider "aws" {
   region = "us-east-1"
   access_key = "AKIAYIFMVIS73IIMCFOA"
   secret_key = "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"
}

variable "test" {}

resource "aws_instance" "dev" {
ami = "ami-09d3b3274b6c5d4aa"
instance_type = "t2.micro"
count = var.test == true ? 3 : 0
}
resource "aws_instance" "prod" {
ami = "ami-09d3b3274b6c5d4aa"
instance_type = "t2.large"
count = var.test == false ? 1 : 0
}
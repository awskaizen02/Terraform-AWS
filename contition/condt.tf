variable "build" { }

resource "aws_instance" "dev" {
  ami                     = "ami-0cc9838aa7ab1dce7"
  instance_type           = "t2.small"
  count = var.build == true ? 1 : 0
}

resource "aws_instance" "test" {
  ami                     = "ami-0cc9838aa7ab1dce7"
  instance_type           = "t2.micro"
  count = var.build == false ? 1 : 0
}
/*
resource "aws_instance" "ins-1" {
  ami           = "ami-0cc9838aa7ab1dce7"
  instance_type = "t2.micro"
}

resource "aws_instance" "ins-2" {
  ami           = "ami-0cc9838aa7ab1dce7"
  instance_type = "t2.micro"
}
*/
/*

resource "aws_instance" "ins-2" {
  ami           = "ami-0cc9838aa7ab1dce7"
  instance_type = "t2.micro"
  count = 3
}
*/
/*
resource "aws_iam_user" "demo" {
    name = "duser${count.index}"
    count = 5
    path = "/system/"
  
}
*/
variable "user_names" {
    type = list
    default = ["dev-user","test-user","prod-user"]
  
}

resource "aws_iam_user" "demo" {
    name = var.user_names[count.index]
    count = 3
    path = "/system/"
  
}
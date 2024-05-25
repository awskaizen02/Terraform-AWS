resource "aws_eip" "un-ram" {
  
  domain   = "vpc"
}

output "public_ip" {
    value = aws_eip.un-ram.public_ip
  
}
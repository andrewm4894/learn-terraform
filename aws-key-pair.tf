resource "aws_key_pair" "my_key" {
  key_name   = "my_key"
  public_key = var.my_public_key
}
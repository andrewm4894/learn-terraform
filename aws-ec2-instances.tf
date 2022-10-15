resource "aws_instance" "my_instance" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = "t3.micro"
  key_name               = aws_key_pair.my_key.key_name
  vpc_security_group_ids = [aws_security_group.my_security_group.id]
  tags = {
    Name = "my_instance"
  }
  user_data_replace_on_change = true
  user_data                   = <<EOF
  #!/bin/bash
  sudo mkdir /helloworld
  EOF
}

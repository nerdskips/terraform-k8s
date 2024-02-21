resource "aws_instance" "pmaster" {
  ami           = "ami-0fb4cf3a99aa89f72"
  instance_type = "t3.micro"
  key_name = "enter-terraform-ec2"
  subnet_id = "subnet-0941691091cb9ce1b"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = {
    Name = "pmaster"
  }
  user_data = file("script.sh")
}

resource "aws_instance" "pworker1" {
  ami           = "ami-0fb4cf3a99aa89f72"
  instance_type = "t3.micro"
  key_name = "enter-terraform-ec2"
  subnet_id = "subnet-0941691091cb9ce1b"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = {
    Name = "pworker1"
  }
  user_data = file("script.sh")
}
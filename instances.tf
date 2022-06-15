resource "aws_instance" "bastion_server" {
  ami                         = "ami-0c4f7023847b90238"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.public_subnet_1a.id
  key_name                    = "demo"
  associate_public_ip_address = true

  tags = {
    Name = "bastion_server"
  }

  vpc_security_group_ids = [aws_security_group.bastion_host_sg.id]
}



resource "aws_instance" "Jenkins" {
  ami           = "ami-0c4f7023847b90238"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.private_subnet_1a.id
  key_name      = "demo"


  tags = {
    Name = "Jenkins"
  }

  vpc_security_group_ids = [aws_security_group.private_sg.id]
}



resource "aws_instance" "app" {
  ami           = "ami-0c4f7023847b90238"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.private_subnet_1b.id
  key_name      = "demo"


  tags = {
    Name = "app"
  }

  vpc_security_group_ids = [aws_security_group.private_sg.id]
}
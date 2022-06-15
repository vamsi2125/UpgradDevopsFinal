resource "aws_nat_gateway" "gateway_1" {
  allocation_id = aws_eip.nat1.id
  subnet_id     = aws_subnet.public_subnet_1a.id

  tags = {
    Name = "NAT 1"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.main]
}



resource "aws_nat_gateway" "gateway_2" {
  allocation_id = aws_eip.nat2.id
  subnet_id     = aws_subnet.public_subnet_1b.id

  tags = {
    Name = "NAT 2"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.main]
}
data "aws_ami" "amazon_linux_2023" {
  most_recent = true
  owners      = ["137112412989"] # Amazon

  filter {
    name   = "name"
    values = ["al2023-ami-2023*-x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "nginx_proxy" {
  ami                         = data.aws_ami.amazon_linux_2023.id
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.public.id
  vpc_security_group_ids      = [aws_security_group.nginx_sg.id]
  key_name                    = var.key_name
  associate_public_ip_address = true

  tags = {
    Name = "${local.name_prefix}-nginx-proxy"
    Role = "nginx-proxy"
  }
}

resource "aws_instance" "backend1" {
  ami                         = data.aws_ami.amazon_linux_2023.id
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.private_a.id
  vpc_security_group_ids      = [aws_security_group.backend_sg.id]
  key_name                    = var.key_name
  associate_public_ip_address = false

  tags = {
    Name = "${local.name_prefix}-backend1"
    Role = "backend"
  }
}

resource "aws_instance" "backend2" {
  ami                         = data.aws_ami.amazon_linux_2023.id
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.private_b.id
  vpc_security_group_ids      = [aws_security_group.backend_sg.id]
  key_name                    = var.key_name
  associate_public_ip_address = false

  tags = {
    Name = "${local.name_prefix}-backend2"
    Role = "backend"
  }
}
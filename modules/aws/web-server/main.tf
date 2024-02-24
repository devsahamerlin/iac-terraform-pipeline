data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = var.aws-owners
}

resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name = "${var.server_name}-vpc"
  }
}

resource "aws_subnet" "subnet" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.vpc_subnet_cidr_block
  availability_zone = "${var.aws_region}a"

  tags = {
    Name = "${var.server_name}-subnet"
  }
}


resource "aws_security_group" "web-server-sg" {
  name = "${var.server_name}-sg"
  ingress {
    from_port   = var.web_server_port
    to_port     = var.web_server_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "serveur-web" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.web-server-sg.id]
  user_data              = <<-EOF
              #!/bin/bash
              apt-get update
              apt-get install -y apache2
              sed -i -e 's/80/${var.web_server_port}/' /etc/apache2/ports.conf
              currentDateTime=$(date)
              echo "Hello AWS Terraform GitHub Actions CI/CD Pipeline Demo $currentDateTime" > /var/www/html/index.html
              systemctl restart apache2
              EOF
  tags = {
    Name = var.server_name
  }
}
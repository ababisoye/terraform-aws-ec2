module "networking" {
  source = "./modules/networking"

  name               = local.name_prefix
  vpc_cidr           = var.vpc_cidr
  public_subnet_cidr = var.public_subnet_cidr
}


resource "aws_security_group" "web" {
  name        = "${local.name_prefix}-web-sg"
  description = "Allow HTTP to the web server"
  vpc_id      = module.networking.vpc_id

  ingress {
    description = "HTTP from anywhere"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all outbound (needed to download Nginx)"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${local.name_prefix}-web-sg"
  }
}

module "web" {
  source = "./modules/ec2"

  name               = local.name_prefix
  instance_type      = var.instance_type
  security_group_ids = [aws_security_group.web.id]
  subnet_id          = module.networking.public_subnet_id
}


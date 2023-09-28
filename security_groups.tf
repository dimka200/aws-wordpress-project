# Security Group for ALB

resource "aws_security_group" "alb_sg" {
  vpc_id = aws_vpc.wordpress_vpc.id
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Security Group for RDS

resource "aws_security_group" "db_sg" {
  vpc_id = aws_vpc.wordpress_vpc.id
  # Add necessary ingress and egress rules
}

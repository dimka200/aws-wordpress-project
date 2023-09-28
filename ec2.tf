# EC2 - This is a basic setup, you might want to use an ASG for production

resource "aws_instance" "wordpress_instance" {
  ami             = "ami-0c55b159cbfafe1f0" # Update this to the latest Ubuntu Server AMI
  instance_type   = "t2.micro"
  subnet_id       = aws_subnet.public_subnet.id
  key_name        = "aws_wordpress_ed"

  user_data = <<-EOF
              #!/bin/bash
              sudo yum update -y
              sudo yum install -y httpd php php-mysql
              sudo systemctl start httpd
              sudo systemctl enable httpd
              # Add more setup scripts for WordPress installation
              EOF

  tags = {
    Name = "wordpress_instance"
  }
}

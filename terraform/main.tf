provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "frontend" {
  ami           = "ami-084568db4383264d4"
  instance_type = "t2.micro"
  key_name      = "test"

  root_block_device {
    volume_size           = 20
    volume_type           = "gp3"
    delete_on_termination = true
  }

  tags = {
    Name = "Frontend-Instance"
  }
}

resource "aws_instance" "backend" {
  ami           = "ami-084568db4383264d4"
  instance_type = "t2.micro"
  key_name      = "test"

  root_block_device {
    volume_size           = 20
    volume_type           = "gp3"
    delete_on_termination = true
  }

  tags = {
    Name = "Backend-Instance"
  }
}

resource "aws_instance" "monitoring" {
  ami           = "ami-084568db4383264d4"
  instance_type = "t2.micro"
  key_name      = "test"

  root_block_device {
    volume_size           = 15
    volume_type           = "gp3"
    delete_on_termination = true
  }

  tags = {
    Name = "Monitoring-Instance"
  }
}

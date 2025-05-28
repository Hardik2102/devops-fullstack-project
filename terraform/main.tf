
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "frontend" {
  ami           = "ami-0c02fb55956c7d316"  # Ubuntu 20.04 LTS
  instance_type = "t2.micro"
  key_name      = "your-key-name"

  tags = {
    Name = "Frontend-Instance"
  }
}

resource "aws_instance" "backend" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"
  key_name      = "your-key-name"

  tags = {
    Name = "Backend-Instance"
  }
}

resource "aws_instance" "monitoring" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"
  key_name      = "your-key-name"

  tags = {
    Name = "Monitoring-Instance"
  }
}

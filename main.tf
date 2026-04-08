provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-01816d07b1128cd2d"
  instance_type = "t2.micro"
  subnet_id     = "subnet-056a7f61"
  key_name      = "UCD_PLUGINS"

  tags = {
    Name = "IAAC-AWS-NEW-VM"
  }
  
  associate_public_ip_address = false
  security_groups = ["sg-061a63a3f20fb92c5"]
}

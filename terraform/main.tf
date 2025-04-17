provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0c94855ba95c71c99" # Amazon Linux 2 (us-east-1)
  instance_type = "t2.micro"

  tags = {
    Name = "TerraformEC2Instance"
  }
}

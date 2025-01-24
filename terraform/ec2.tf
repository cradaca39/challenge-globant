provider "aws" {
    access_key = "xxxxx"
    secret_key = "xxxxx"
    region = "us-east-1"
}

resource "aws_instance" "globant_instance" {
  ami                    = "xxxx"
  instance_type          = "xxx"
  subnet_id              = "subnet-xxx"
  vpc_security_group_ids = ["sg-xxx"]
  key_name               = "xxxxx"
  iam_instance_profile = "xxxxx" # rol set with permission as admin
  user_data = filebase64("user_data.sh")
  root_block_device {
    volume_type = "gp2"
    volume_size = "10"
  }

  tags = {
    Name = "xxxxx"
  }
}
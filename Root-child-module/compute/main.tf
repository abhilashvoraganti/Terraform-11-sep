resource "aws_instance" "server" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id

  tags = {
    Name = "abhi-EC2"
  }
}

resource "aws_s3_bucket" "storage" {
  bucket = "abhi-s3"

  tags = {
    Name = "Root-S3"
  }
}
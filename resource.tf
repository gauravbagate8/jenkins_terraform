
#data block is used to read or take a predefined or already existing resource in enviroment
data "aws_ami" "amazon-linux" {
  most_recent = true
  owners      = ["137112412989"]
  filter {
    name   = "name"
    values = ["al2023-ami-2023*"]
  }

  filter {
    name   = "owner-alias"
    values = ["amazon"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

}

resource "aws_instance" "test2" {
  ami           = data.aws_ami.amazon-linux.id
  instance_type = var.instance_type
  count         = var.instance_count

  tags = {

    Name = "Gaurav-test"
  }
}

resource "aws_s3_bucket" "s3test" {
  bucket = "my-tf-sds-bucket"
}

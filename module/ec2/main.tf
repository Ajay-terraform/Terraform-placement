provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "abc" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      =  var.key_pair_name
root_block_device {
  volume_size = var.root_volume_size
}
  subnet_id         = var.subnet_id
  tags = {
    name = var.tags
  }
}
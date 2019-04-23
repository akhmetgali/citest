provider "aws" {
  region = "${var.aws_region}"
}

resource "aws_instance" "test-instance" {
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  subnet_id = "${var.subnet_id}"
  security_groups = ["${var.security_groups}"]
  key_name = "${var.key_name}"
  associate_public_ip_address = "true"
  tags {
    Name = "CirceCI-Terraform-Test"
  }
}
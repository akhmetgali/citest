provider "aws" {
  region = "${var.aws_region}"
}

terraform {
  backend "s3" {}
}

resource "aws_instance" "test-instance" {
  ami = "ami-011b6930a81cd6aaf"
  instance_type = "${var.instance_type}"
  subnet_id = "${var.subnet_id}"
  security_groups = ["${var.security_groups}"]
  key_name = "${var.key_name}"
  associate_public_ip_address = "true"
  tags {
    Name = "CirceCI-Terraform-OOOOOOOOOO",
    Environment = "Test-and-CI",
    New = "Atlantis"
  }
}

resource "aws_instance" "test-instance" {
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  subnet_id = "${var.subnet_id}"
  security_groups = ["${var.security_groups}"]
  key_name = "${var.key_name}"
  associate_public_ip_address = "true"
  tags {
    Name = "CirceCI-Terraform-Test-Terragrunt",
    Environment = "Test-and-CI",
    New = "Atlantis"
  }
}



output "test_ip" {
  value = "${aws_instance.test-instance.public_ip}"
}
output "what" {
  value = "ERROR OR OK"
}

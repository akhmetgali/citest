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
    Name = "CirceCI-Terraform-Test-Atlantis",
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

provider "aws" {
	region			= "${var.region}"
	shared_credentials_file	= "${var.shared_credentials_file}"
	profile			= "${var.profile}"
}

resource "aws_instance" "web" {
	count		= 3
	ami		= "${lookup(var.ubuntu_ami, var.region)}"
	instance_type	= "${var.instance_type}"
	key_name	= "${var.key_name}"
	vpc_security_group_ids = "${var.vpc_security_group_ids}" 
	tags {
		Name	= "${var.tag_name}-${count.index + 1}" 
	}
}

provider "aws" {
	region			= "${var.region}"
	shared_credentials_file	= "${var.shared_credentials_file}"
	profile			= "${var.profile}"
}

resource "aws_instance" "web" {
	ami		= "${lookup(var.ubuntu_ami, var.region)}"
	instance_type	= "t2.micro"
	key_name	= "aws-keypair"
	vpc_security_group_ids = ["sg-0722166403e098c7e"] 
	tags {
		Name	= "by-terraform" 
	}
}

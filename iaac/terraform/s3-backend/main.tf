# You cannot use variables in backend configuration
terraform {
	backend "s3" {
		bucket	= "rasekoli-devops"
		encrypt	= true
		key	= "terraform.tfstate"
		region	= "eu-central-1"
		profile = "terraform"
		dynamodb_table = "terraform-state-lock-dynamo"
	}
}

provider "aws" {
	region			= "${var.region}"
	shared_credentials_file	= "${var.shared_credentials_file}"
	profile			= "${var.profile}"
}

resource "aws_instance" "web" {
	ami		= "${lookup(var.ubuntu_ami, var.region)}"
	instance_type	= "${var.instance_type}"
	key_name	= "${var.key_name}"
	vpc_security_group_ids = "${var.vpc_security_group_ids}" 
	tags {
		Name	= "${var.tag_name}" 
	}
}

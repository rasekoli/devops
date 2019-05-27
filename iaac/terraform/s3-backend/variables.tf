variable "region"			{ default = "eu-central-1" }
variable "shared_credentials_file"	{ default = "/home/ubuntu/.aws/credentials" }
variable "profile"			{ default = "terraform" }
variable "ubuntu_ami"			{ default = { 
						"eu-central-1"	= "ami-090f10efc254eaf55"
						}
}
variable "instance_type"		{ default = "t2.micro" }
variable "key_name"			{ default = "aws-keypair" }
variable "vpc_security_group_ids"	{ default = ["sg-0722166403e098c7e"] }
variable "tag_name"			{ default = "terraform" }

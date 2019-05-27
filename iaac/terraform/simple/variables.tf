variable "region"			{ default = "eu-central-1" }
variable "shared_credentials_file"	{ default = "/home/ubuntu/.aws/credentials" }
variable "profile"			{ default = "terraform" }
variable "ubuntu_ami"			{ default = { 
						"eu-central-1"	= "ami-090f10efc254eaf55"
						"eu-west-1"	= "ami-f90a4880"
						}
}

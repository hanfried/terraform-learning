variable "gcp_networkname" {
  type = "string"
  default = "devnetwork"
  description = "Network name for GCP"
}

variable "gcp_ip_cidr_range" {
  type = "string"
  default = "10.0.1.0/24"
  description = "IP CIDR Range for Google VPC"
}

variable "aws_vpc_name" {
  type = "string"
  default = "environment-example-2"
  description = "AWS VPC name"
}

variable "aws_ip_cidr_range" {
  type = "string"
  default = "10.0.0.0/16"
  description = "IP CIDR Range for AWS VPC"
}

variable "subnet_names" {
  type = "map"

  default = {
    gcp_subnetwork = "dev-subnet"
    aws_subnet1 = "subnet1"
    aws_subnet2 = "subnet2"
  }
}

variable "kubey_pass" {
  type = "string"
}

variable "kubey_username" {
  type = "string"
}


output "aws_cidr_subnet1" {
  value = "${aws_subnet.subnet1.cidr_block}"
}

output "aws_cidr_subnet2" {
  value = "${aws_subnet.subnet2.cidr_block}"
}

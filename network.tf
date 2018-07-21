resource "google_compute_network" "my_dev_network" {
  name = "${var.gcp_networkname}"
  auto_create_subnetworks = false
}

resource "aws_vpc" "environment-example-2" {
  cidr_block = "${var.aws_ip_cidr_range}"
  enable_dns_hostnames = true
  enable_dns_support = true
  tags {
    Name = "terraform-learning-aws-vpc-example-2"
  }
}

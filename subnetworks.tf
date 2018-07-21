resource "google_compute_subnetwork" "dev-subnet" {
  ip_cidr_range = "${var.gcp_ip_cidr_range}"
  name = "${var.subnet_names["gcp_subnetwork"]}"
  network = "${google_compute_network.my_dev_network.self_link}"
  region = "europe-west3"
}

resource "aws_subnet" "subnet1" {
  cidr_block = "${cidrsubnet(aws_vpc.environment-example-2.cidr_block, 3, 1)}"
  vpc_id = "${aws_vpc.environment-example-2.id}"
  availability_zone = "eu-central-1a"
}

resource "aws_subnet" "subnet2" {
  cidr_block = "${cidrsubnet(aws_vpc.environment-example-2.cidr_block, 2, 2)}"
  vpc_id = "${aws_vpc.environment-example-2.id}"
  availability_zone = "eu-central-1b"
}

resource "aws_security_group" "subnetsecurity" {
  vpc_id = "${aws_vpc.environment-example-2.id}"
  ingress {
    cidr_blocks = [
      "${aws_vpc.environment-example-2.cidr_block}"
    ]

    from_port = 80
    to_port = 80
    protocol = "tcp"
  }
}

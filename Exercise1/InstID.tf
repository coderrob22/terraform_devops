#We are using a data resource to fetch the data outside of terraform.
## Resource type and resource name, followed by reseource block

data "aws_ami" "amiID" {
  most_recent = true

  filter {
    name   = "name"
    values = ["destination"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]
}

resource "aws_instance" "master" {
  ami           = "ami-0974a2c5ddf10f442"  # Ubuntu 24.04 LTS
  instance_type = "t3.micro"
  key_name      = "k8s-key"                # <- AJOUTE CETTE LIGNE
  tags = {
    Name = "k8s-master"
  }
}

resource "aws_instance" "worker" {
  ami           = "ami-0974a2c5ddf10f442"
  instance_type = "t3.micro"
  key_name      = "k8s-key"                # <- AJOUTE CETTE LIGNE
  tags = {
    Name = "k8s-worker"
  }
}
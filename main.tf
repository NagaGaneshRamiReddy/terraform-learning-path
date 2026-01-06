provider "aws" {
region = "us-east-1"
}
resource "aws_security_group" "web_sg" {
name = "web-sg"


ingress {
from_port = 22
to_port = 22
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}


ingress {
from_port = 80
to_port = 80
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}
}
resource "aws_instance" "ec2" {
count = 2
ami = "ami-0ecb62995f68bb549"
instance_type = "t3.micro"
security_groups = [aws_security_group.web_sg.name]


tags = {
Name = "R.N.GANSEH-${count.index + 1}"
}
}

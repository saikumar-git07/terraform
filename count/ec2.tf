resource "aws_instance" "db" {
   count = 3
   ami = "ami-09c813fb71547fc4f"
   vpc_security_group_ids = [aws_security_group.allow_ssh.id]
   instance_type = "t3.micro"
   tags = {
       Name = var.instance_names[count.index]
   }
}
resource "aws_security_group" "allow_ssh" {
    name = "allow_ssh"
    description = "allowing SSH access"

    ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
   }

    tags = {
       Name = "allow_ssh"
       Manager = "sai"
    }
} 
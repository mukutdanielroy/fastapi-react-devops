# provider "aws" {
#   region = "ap-south-1"  # Change this to your desired region
# }

# resource "aws_instance" "fastapi_instance" {
#   ami           = "ami-0dee22c13ea7a9a67"  # Use an appropriate AMI for your region
#   instance_type = "t2.micro"  # Change as needed

#   tags = {
#     Name = "FastAPI-Instance"
#   }

#   # User data to run on instance launch
#   user_data = <<-EOF
#               #!/bin/bash
#               sudo apt-get update
#               sudo apt-get install python3-pip -y
#               sudo apt-get install git -y  # Install git if you need to clone your repo
#               # Change to the appropriate directory
#               mkdir /home/ubuntu/fastapi-react-devops
#               cd /home/ubuntu/fastapi-react-devops
#               # Clone the project repository (assuming it's hosted on GitHub)
#               git clone https://github.com/mukutdanielroy/fastapi-react-devops.git .
#               pip3 install -r requirements.txt
#               nohup uvicorn app.main:app --host 0.0.0.0 --port 8000 &
#               EOF
# }

# resource "aws_security_group" "allow_ssh_http" {
#   name = "allow_ssh_http"

#   ingress {
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   ingress {
#     from_port   = 8000  # Adjust this based on your FastAPI app's port
#     to_port     = 8000
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# }

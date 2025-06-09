provider "aws" {
    region = "ap-south-1a"
}

resource "aws_instance" "my_ec2" {
    ami = "ami-002f6e91abff6eb96"
    instance_type = "t2.micro"
    key_name = "ansible"
    security_groups = "sg-05334a809ea7bba2f"
    associate_public_ip_address = true
    
    root_block_device {
      volume_size = 8
      volume_type = "gp2"
    }

    tags = {
        name = "myTfInstance"
    }
}

output "public_ip" {
        description = "Public ip address of the guven instance"
        value = aws_instance.my_instance.public_ip
    }
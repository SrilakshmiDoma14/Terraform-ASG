resource "aws_launch_configuration" "Ansible"{
    name = "Ansible"
    instance_type = "t2.micro"
    #image_id = "ami-077d7e91242395d35"
    image_id = "ami-0bbe28eb2173f6167"
    user_data = "${file("startup.sh")}"
    security_groups = [aws_security_group.ASG_SG.id]
}
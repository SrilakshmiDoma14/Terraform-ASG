resource "aws_autoscaling_group" "ansible-autoscaling" {
  name                      = "ansible-autoscaling"
  launch_configuration      = aws_launch_configuration.Ansible.name
  vpc_zone_identifier       = [aws_subnet.public-subnet.id]
  #vpc_zone_identifier       = [aws_subnet.subnet-130ce578, aws_subnet.subnet-15a98e6f]
  min_size                  = 1
  max_size                  = 2
  health_check_grace_period = 300
  health_check_type         = "EC2"
  force_delete              = true

  depends_on = [
    aws_launch_configuration.Ansible
  ]

  tag {
    key                 = "Name"
    value               = "auto_instance"
    propagate_at_launch = true
  }
}
#output "instance_id"  {

   #value = aws_instance.app_server.id
#}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.jenkins_instance.public_ip
}

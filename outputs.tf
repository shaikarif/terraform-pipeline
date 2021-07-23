output "instance_id"  {

   value = aws_instance.JenkinsMaster.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.JenkinsMaster.public_ip
}

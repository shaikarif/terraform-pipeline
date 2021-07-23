output "instance_id"  {

   value = aws_instance.JenkinsMaster.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.JenkinsMaster.public_ip
}


output "instance_type" {

     value = aws_instance.JenkinsMaster.instance_type
}

output "instance_state" {
       value = aws_instance.JenkinsMaster.instance_state
}

output "public_dns" {
          value = aws_instance.JenkinsMaster.public_dns
}





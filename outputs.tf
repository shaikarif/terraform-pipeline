output "instance_id"  {

   value = "aws_instance.JenkinsMaster.id[count.index]"
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = "aws_instance.JenkinsMaster.public_ip[count.index]"
}


output "instance_type" {

     value = "aws_instance.JenkinsMaster.instance_type[count.index]"
}

output "instance_state" {
       value = "aws_instance.JenkinsMaster.instance_state[count.index]"
}

output "public_dns" {
          value = "aws_instance.JenkinsMaster.public_dns[count.index]"
}





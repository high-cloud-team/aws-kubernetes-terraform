#############################################################
##
## This app file contains the Outputs of Networking / Security Group / Groups of Kubernetes for 
## HighCloud Kubernetes Terraform Module 
## 
## @package /highcloud-k8s/modules/networking/security_group/groups
## @year 2018
## @author Muhammet Arslan <muhammet.arslan@highcloud.team>
##
#############################################################

output "ssh_sg_id" {
  description = "The ID of the SSH-ing Security Group Id"
  value       = "${aws_security_group.ssh-internal-k8s.id}"
}

output "master_sg_id" {
  description = "The ID of the Master Security Group Id"
  value       = "${aws_security_group.masters-highcloud-k8s.id}"
}

output "api_elb_sg_id" {
  description = "The ID of the API-ELB Security Group Id"
  value       = "${aws_security_group.api-elb-highcloud-k8s.id}"
}

output "api_int_elb_sg_id" {
  description = "The ID of the Internal API-ELB Security Group Id"
  value       = "${aws_security_group.api-internal-elb-highcloud-k8s.id}"
}

output "nodes_sg_id" {
  description = "The ID of the Nodes Security Group Id"
  value       = "${aws_security_group.nodes-highcloud-k8s.id}"
}

#############################################################
##
## This app file contains the Variables of Networking / Security Group / Groups of Kubernetes for 
## HighCloud Kubernetes Terraform Module 
## 
## @package /highcloud-k8s/modules/networking/security_group/groups
## @year 2018
## @author Muhammet Arslan <muhammet.arslan@highcloud.team>
##
#############################################################

variable "cluster_domain" {
  description = "Application Domain to be used on all the K8S Resources as identifier"
  default     = ""
}

variable "tags" {
  description = "A map of tags to add to all resources"
  default     = {}
}

## VPC Settings
variable "vpc_id" {
  description = "VPC ID to locate resources in it"
  default     = ""
}

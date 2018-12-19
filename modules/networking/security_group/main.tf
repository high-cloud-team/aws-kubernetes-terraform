#############################################################
##
## This app file contains the Networking / Security Group of Kubernetes installation flows for 
## HighCloud Kubernetes Terraform Module 
## 
## @package /highcloud-k8s/modules/networking/security_group/
## @year 2018
## @author Muhammet Arslan <muhammet.arslan@highcloud.team>
##
#############################################################

## Security Group Installation
module "groups_security_group" {
  source = "./groups/"

  cluster_domain = "${var.cluster_domain}"
  tags           = "${var.tags}"
  
  vpc_id         = "${var.vpc_id}"
}
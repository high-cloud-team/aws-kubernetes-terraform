#############################################################
##
## This app file contains the Networking of Kubernetes installation flows for 
## HighCloud Kubernetes Terraform Module 
## 
## @package /highcloud-k8s/modules/networking/
## @year 2018
## @author Muhammet Arslan <muhammet.arslan@highcloud.team>
##
#############################################################

## Security Group Installation
module "security_group" {
  source = "./security_group/"

  cluster_domain = "${var.cluster_domain}"
  tags           = "${var.tags}"

  vpc_id = "${var.vpc_id}"
}

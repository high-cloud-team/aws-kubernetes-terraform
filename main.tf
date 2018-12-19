#############################################################
##
## This app file contains the Bootstrap of Kubernetes installation flows for 
## HighCloud Kubernetes Terraform Module 
## 
## @package /highcloud-k8s/
## @year 2018
## @author Muhammet Arslan <muhammet.arslan@highcloud.team>
##
#############################################################

# Networking Installation
module "networking" {
  source = "./modules/networking"

  vpc_id = "${var.vpc_id}"
  cluster_domain = "${var.cluster_domain}"

  tags = "${var.tags}"
}
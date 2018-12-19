#############################################################
##
## This app file contains the Networking / Security Group / Groups of Kubernetes installation flows for 
## HighCloud Kubernetes Terraform Module 
## 
## @package /highcloud-k8s/modules/networking/security_group/groups
## @year 2018
## @author Muhammet Arslan <muhammet.arslan@highcloud.team>
##
#############################################################

## Westwing Security Group Resources
resource "aws_security_group" "ssh-internal-k8s" {
  name        = "ssh-${var.cluster_domain}"
  vpc_id      = "${var.vpc_id}"
  description = "Security group for SSH-ing"

  tags = "${merge(var.tags, map(
    "Name", "ssh.${var.cluster_domain}"
  ))}"
}

resource "aws_security_group" "masters-highcloud-k8s" {
  name        = "masters.${var.cluster_domain}"
  vpc_id      = "${var.vpc_id}"
  description = "Security group for masters"

  tags = "${merge(var.tags, map(
    "Name", "masters.${var.cluster_domain}"
  ))}"
}

resource "aws_security_group" "api-elb-highcloud-k8s" {
  name        = "api-elb.${var.cluster_domain}"
  vpc_id      = "${var.vpc_id}"
  description = "Security group for API-ELB"

  tags = "${merge(var.tags, map(
    "Name", "api-elb.${var.cluster_domain}"
  ))}"
}

resource "aws_security_group" "api-internal-elb-highcloud-k8s" {
  name        = "api-int-elb.${var.cluster_domain}"
  vpc_id      = "${var.vpc_id}"
  description = "Security group for Internal API-ELB"

  tags = "${merge(var.tags, map(
    "Name", "api-int-elb.${var.cluster_domain}"
  ))}"
}

resource "aws_security_group" "nodes-highcloud-k8s" {
  name        = "nodes.${var.cluster_domain}"
  vpc_id      = "${var.vpc_id}"
  description = "Security group for nodes"

  tags = "${merge(var.tags, map(
    "Name", "nodes.${var.cluster_domain}"
  ))}"
}

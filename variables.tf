variable "name_suffix" {
  type = string
}

variable "cluster_name" {
  type    = string
  default = "kubernetes"
}

variable "environment" {
  type    = string
  default = "labs"
}

variable "main_resource_group" {
  type = string
}

variable "images_resource_group" {
  type = string
}

variable "vnet_name" {
  type = string
}

variable "subnet_name" {
  type = string
}

variable "k8s_image_name" {
  type = string
}

variable "bastion_image_name" {
  type = string
}

variable "ssh_public_key" {
  type = string
}

variable "default_tags" {
  type = map(string)

  default = {
    applicationname = "k8s"
    deploymenttype  = "Terraform"
    platform        = "Kubernetes"
  }
}

variable "worker_count" {
  type    = string
  default = "3"
}

variable "worker_name" {
  type    = string
  default = "worker"
}

variable "manager_count" {
  type    = string
  default = "3"
}

variable "worker_vm_size" {
  type    = string
  default = "Standard_DS4_v2"
}

variable "manager_vm_size" {
  type    = string
  default = "Standard_DS2_v2"
}

variable "worker_lb_address_pool_id" {
  type = string
}

variable "manager_lb_address_pool_id" {
  type = string
  default = ""
}

variable "worker_network_security_group_id" {
  type = string
}

variable "manager_network_security_group_id" {
  type = string
}

variable "add_managers" {
  type    = string
  default = "yes"
}

variable "add_bastion" {
  type    = string
  default = "yes"
}

variable "add_manager_lb" {
  type    = string
  default = "no"
}

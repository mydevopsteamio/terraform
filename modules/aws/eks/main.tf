/*
 * # AWS EKS Module 💡
 * Description
 * ============
 * This tf file contains the module configuration of eks cluster used by mydevopsteam.io <br>
 * ***Author***: Alfred Valderrama (@redopsbay) <br>
*/

data "aws_caller_identity" "current" {}


module "eks" {
  source = "git::https://github.com/terraform-aws-modules/terraform-aws-eks.git?ref=2cb1fac31b0fc2dd6a236b0c0678df75819c5a3b" # commit hash of version 19.21.0

  cluster_name    = var.k8s_name
  cluster_version = var.k8s_version

  cluster_endpoint_public_access = var.is_api_public

  ## TODO: cluster_addons = {}

  for_each                 = var.vpc
  vpc_id                   = each.value.id
  subnet_ids               = each.value.subnet_ids
  control_plane_subnet_ids = try(each.value.cp_subnet_ids, each.value.subnet_ids)

  # EKS Managed Node Group(s)
  eks_managed_node_groups = {
    for i, v in var.worker_nodes : "${var.k8s_name}-worker-${i}" => {
      min_size       = try(v.min_size, 2)
      max_size       = try(v.max_size, 2)
      desired_size   = try(v.desired_size, 2)
      instance_types = try(tolist(v.instance_types), ["t3.medium"])
      capacity_type  = try(v.capacity_type, "SPOT")
    }
  }

  # aws-auth configmap
  manage_aws_auth_configmap = var.auth_configmap

  aws_auth_roles = [for i, v in var.auth_configmap_roles : {
    role_arn = v.role_arn
    username = v.username
    groups   = v.groups
  } if var.auth_configmap == true]

  aws_auth_users = [for i, v in var.auth_configmap_users : {
    user_arn = v.user_arn
    username = v.username
    groups   = v.groups
  } if var.auth_configmap == true]

  aws_auth_accounts = try(var.configmap_aws_accounts, ["${data.aws_caller_identity.current.account_id}"], null)

  tags = var.k8s_tags
}

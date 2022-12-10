manage_aws_auth_configmap = true 

aws_auth_roles = [
    {
      rolearn  = ${aws_iam_role.eks_wn_role.arn}
      username = "role1"
      groups   = ["system:nodes"]
    }
  ]

  tags = {
    Environment = "dev"
    Terraform   = "true"
  }
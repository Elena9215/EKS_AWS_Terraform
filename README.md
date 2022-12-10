# Create an Amazon EKS cluster on AWS using Terraform

Requirements:

* Must use one of the supported versions of Kubernetes offered by AWS 
* Must contain at least 1 t3.medium instance along with at least 2 and at most 4 mixed spot and on-demand instances
* Must contain multi-AZ nodes
* Create new VPC with unique CIDR
* VPC must have 3 public subnets and 3 private subnets
* Kubernetes cluster should be placed in the public subnets, but private subnets used for RDS communication
* Security Groups locked down to minimal permissive rules (SSH, web access, node ports, etc.)
* Must not use managed node groups. Nodes must be configured via ASG (auto scaling group)
* MUST install and validate NGINX Ingress as functioning properly


Prerequisites:

* an AWS account
* the AWS CLI, installed and configured

https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html

* AWS IAM Authenticator

https://docs.aws.amazon.com/eks/latest/userguide/install-aws-iam-authenticator.html

* kubectl

https://kubernetes.io/docs/tasks/tools/



Resources:

https://developer.hashicorp.com/terraform/tutorials/kubernetes/eks

https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/2.32.0

Cluster IAM Role -

https://hands-on.cloud/how-to-set-up-amazon-eks-cluster-using-terraform/#h-eks-cluster-deployment-architecture

ASG mixed policy -

https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_group

Modules - 

https://registry.terraform.io/modules/terraform-aws-modules/eks/aws/latest


Issue section:

https://aws.amazon.com/premiumsupport/knowledge-center/ec2-not-auth-launch/#:~:text=The%20%22UnauthorizedOperation%22%20error%20indicates%20that,permissions%20to%20launch%20EC2%20instances.








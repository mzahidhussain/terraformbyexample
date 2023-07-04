resource "aws_eks_node_group" "this" {
  cluster_name    = aws_eks_cluster.this.name
  node_group_name = var.tags["Name"]
  node_role_arn   = aws_iam_role.k8nodegroup.arn
  subnet_ids      = [for output in data.aws_subnets.private-subnets.ids : output] # < this is new way >  #
  ami_type        = "AL2_x86_64"

  scaling_config {
    desired_size = 1
    max_size     = 2
    min_size     = 1
  }

  update_config {
    max_unavailable = 1
  }

  # Ensure that IAM Role permissions are created before and deleted after EKS Node Group handling.
  # Otherwise, EKS will not be able to properly delete EC2 Instances and Elastic Network Interfaces.
  depends_on = [
    aws_iam_role_policy_attachment.k8nodegroup-AmazonEKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.k8nodegroup-AmazonEKS_CNI_Policy,
    aws_iam_role_policy_attachment.k8nodegroup-AmazonEC2ContainerRegistryReadOnly,
  ]
}
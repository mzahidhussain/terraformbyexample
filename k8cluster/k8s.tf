
data "aws_subnets" "private-subnets" {
    filter {
        name   = "tag:Name"
        values = ["private-subnet"]
     }
     filter {
    name   = "vpc-id"
    values = [var.vpc_id]
  }
  #  availability_zone = var.availability_zone
}


# EKS Cluster

resource "aws_eks_cluster" "this" {
  name     = "${var.project}-cluster"
  role_arn = aws_iam_role.cluster.arn
  version  = "1.24"

  vpc_config {
    # security_group_ids      = [aws_security_group.eks_cluster.id, aws_security_group.eks_nodes.id]
    #subnet_ids              = data.aws_subnets.private-subnets.ids  < this works > 
    subnet_ids              =  [for output in data.aws_subnets.private-subnets.ids: output]  # < this is new way >  # 
    endpoint_private_access = true
    endpoint_public_access  = true
    public_access_cidrs     = ["0.0.0.0/0"]
  }

  tags = merge(
    var.tags
  )

 # depends_on = [
 #   aws_iam_role_policy_attachment.cluster_AmazonEKSClusterPolicy
 # ]

}

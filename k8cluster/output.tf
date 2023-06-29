output "K8_SecurityGroup" {
    value = aws_eks_cluster.this.vpc_config[0].cluster_security_group_id
}


output "K8_cluster" {
    value = aws_eks_cluster.this.arn
}
output "K8_cluster_role" {
    value = aws_eks_cluster.this.role_arn
}

output "K8_cluster_version" {
    value = aws_eks_cluster.this.version
}

output "K8_cluster_vpc_config" {
    value = aws_eks_cluster.this.vpc_config[0].vpc_id
}



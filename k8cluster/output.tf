

output "K8_cluster" {
  value = aws_eks_cluster.this.arn
}

output "K8_cluster_name" {
  value = aws_eks_node_group.this.cluster_name
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


output "K8_SecurityGroup" {
  value = aws_eks_cluster.this.vpc_config[0].cluster_security_group_id
}

output "K8_config_command" {

    # value =  data.aws_region.current.name
    value =  "aws eks update-kubeconfig --name ${aws_eks_cluster.this.name} --region ${data.aws_region.current.name}" 


}







output "K8_Node_IAMRole" {
  value = aws_eks_node_group.this.node_role_arn
}

output "K8_Node_ami_type" {
  value = aws_eks_node_group.this.ami_type
}





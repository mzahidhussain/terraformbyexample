resource "aws_iam_user" "iamusers" {
    
    for_each = toset(var.users)
    name=each.value

  tags = {
    createdby = "terraform"
    name= each.value
  }
  
}

# DATA RETERIEVEAL#
data "aws_vpc" "selected" {
      id = var.vpc_id
}

data "aws_subnet" "public-subnet" {
    filter {
        name   = "tag:Name"
        values = ["public-subnet"]
     }
    availability_zone = var.availability_zone
}


data "aws_ami" "amazon_linux" {
  most_recent = true
  owners= ["amazon"]
  filter {
    name   = "name"
    values = ["amzn-ami-hvm-*-x86_64-gp2"]
  }
  
  
}


# SG ASSOCIATION #
resource "aws_security_group" "Bastion-SG" {
    name = local.sg_name
    vpc_id      = data.aws_vpc.selected.id

   


    egress  {
                from_port         = 0
                to_port           = 0
                protocol          = "-1"
                cidr_blocks       = ["0.0.0.0/0"]        
            }

    ingress {
                from_port         = 22
                to_port           = 22
                protocol          = "tcp"
                cidr_blocks       =  ["0.0.0.0/0"]
            }   

    tags = {
        Name = "Bastion-SG"
    }

}

# KEY PAIR #

resource "aws_key_pair" "bastion" {
  key_name   = "bastion-key"
  public_key =  var.key
}



# EC2 INSTANCE # 

resource "aws_instance" "bastion" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.Bastion-SG.id]
  tags = local.tags
  key_name =  aws_key_pair.bastion.key_name
  subnet_id = data.aws_subnet.public-subnet.id

depends_on = [
    aws_key_pair.bastion,
    aws_security_group.Bastion-SG
 ]
}

#EIP#
resource "aws_eip" "eip" {
  instance = aws_instance.bastion.id
  depends_on = [
    aws_instance.bastion
 ]
}





data "aws_ami" "aws msp" {

    most_recent = true
    owners = ["672945439745"]

    filter {
        name   = "name"
        values = ["Redhat-9-DevOps-Practice"]
    }

    filter {
        name   = "root-device-type"
        values = ["ebs"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
}


# data "aws_ami" "sonarqube" {
#   most_recent = true
#   owners      = ["679593333241"] # Solve DevOps

#   filter {
#     name   = "name"
#     values = ["SolveDevOps-SonarQube-Server-Ubuntu24.04-*"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }

#   filter {
#     name   = "architecture"
#     values = ["x86_64"]
#   }
# }
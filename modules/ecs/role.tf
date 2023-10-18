## This template creates the default IAM role.

## Creating IAM role for Control plane
resource "aws_iam_role" "ecs_role" {
  name               = "${var.PRODUCT_NAME}_${var.ENV}_${var.AIRPORT_CODE[var.AWS_REGION]}_${var.APPNAME}_ECS_Role"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "",
      "Effect": "Allow",
      "Principal": {
        "Service": [
          "ecs-tasks.amazonaws.com"
        ]
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}
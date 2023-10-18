## Designing Custom Policy
resource "aws_iam_policy" "custom_policy" {
  name        = "${var.PRODUCT_NAME}_${var.ENV}_${var.AIRPORT_CODE[var.AWS_REGION]}_${var.APPNAME}_ECS_Policy"
  description = "Policy for ${var.APPNAME} farget"
  policy      = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": [
                "ecr:*",
                "logs:*",
                "s3:*",
                "sns:*"
            ],
            "Resource": "*",
            "Effect": "Allow"
        }

    ]
}
EOF
}

## getting full VPC policy
# resource "aws_iam_policy" "vpc_policy" {
#   name        = "${var.APPNAME}"
#   description = "Policy for ${var.APPNAME} farget"
#   policy      = "arn:aws:iam::aws:policy/AmazonVPCFullAccess"

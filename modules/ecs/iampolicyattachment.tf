## This template will attach the designed policy to a defined Role

resource "aws_iam_role_policy_attachment" "CustomPolicy-attachment" {
  role       = aws_iam_role.ecs_role.name
  policy_arn = aws_iam_policy.custom_policy.arn
}

resource "aws_iam_role_policy_attachment" "VpcPolicy-attachment" {
  role       = aws_iam_role.ecs_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonVPCFullAccess"
}

resource "aws_iam_role_policy_attachment" "SESPolicy-attachment" {
  role       = aws_iam_role.ecs_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSESFullAccess"
}
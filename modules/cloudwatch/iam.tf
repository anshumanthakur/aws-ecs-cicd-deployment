#####Cloudwatch event IAM Role
##### <meenakshi.upadhyay@pb.com>

## Schedule event rule

### AT&T CTDI
resource "aws_iam_role" "rvp_phase2_scheduled_task_event_role" {
  name = "sf-elt-poc_ecs_task_event_role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "events.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_iam_role_policy" "rvp_phase2_task_event_role_policy" {
  name   = "sf-elt-poc_ecs_task_event_role_policy"
  role   = aws_iam_role.rvp_phase2_scheduled_task_event_role.id
  policy      = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": [
                "ecs:RunTask",
                "iam:PassRole"
            ],
            "Resource": "*",
            "Effect": "Allow"
        }

    ]
}
EOF
}
#######

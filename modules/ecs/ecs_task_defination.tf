## Creating cluster task defination
## <meenakshi.upadhyay@pb.com>


### getting aws account id
data "aws_caller_identity" "current" {}

resource "aws_ecs_task_definition" "ecs_task" {
  family = "${var.projectNAme}_task_defination"  # task defination Name
  container_definitions = var.container_definitions
  requires_compatibilities = ["FARGATE"]
  cpu = 1024
  memory = 4096
  network_mode = "awsvpc"
  task_role_arn = aws_iam_role.ecs_role.arn
  execution_role_arn = aws_iam_role.ecs_role.arn
  tags = {
    NAME = "${var.PRODUCT_NAME}_${var.ENV}_${var.AIRPORT_CODE[var.AWS_REGION]}_${var.projectNAme}"
    APPLICATION = "${var.APPNAME}"
  }
}

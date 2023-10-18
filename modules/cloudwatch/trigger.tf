
## CHICO's FAS
resource "aws_cloudwatch_event_target" "chico_fas_ecs_scheduled_task" {
  arn       = var.ECS_CLUSTER_ARN
  rule      = aws_cloudwatch_event_rule.ctdi-event.name
  role_arn  = aws_iam_role.rvp_phase2_scheduled_task_event_role.arn

  ecs_target {
    task_count          = 1
    task_definition_arn = var.TASK_DEFINITION_ARN
    launch_type         = "FARGATE"
    network_configuration {
        subnets = var.VPC_SUBNETS
    }
  }
}

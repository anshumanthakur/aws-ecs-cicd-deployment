## Getting ARN of ECS and TASK DEFINITION

output "ecs_cluster" {
  description = "ECS CLUSTER ARN"
  value       = aws_ecs_cluster.ecs-cluster.arn
}

output "task_definition" {
  description = "TASK DEFINITION ARN"
  value       = aws_ecs_task_definition.ecs_task.arn
}

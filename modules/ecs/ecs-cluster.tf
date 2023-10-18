## Provisioning ECS Cluster
## <meenakshi.upadhyay@pb.com>

### ECS cluster
resource "aws_ecs_cluster" "ecs-cluster" {
  name = "${var.PRODUCT_NAME}_${var.ENV}_${var.AIRPORT_CODE[var.AWS_REGION]}_${var.APPNAME}"
  capacity_providers = ["FARGATE"]
  default_capacity_provider_strategy {
    capacity_provider = "FARGATE"
  } 
  tags = {
    NAME = "${var.PRODUCT_NAME}_${var.ENV}_${var.AIRPORT_CODE[var.AWS_REGION]}_${var.APPNAME}"
    Owner = "${var.TECH_CONTACT}"
    APPLICATION = "${var.APPNAME}"
  }
    setting {
    name = "containerInsights"
    value = "enabled"
  }
}

locals {
  projectNAme="$$projectname$$"
}
module "ecs" {
  source                          = "../modules/ecs"
  APPNAME                         = "sf_elt_poc"
  PRODUCT_NAME                    = "fusion"
  ENV                             = "dev"
  AWS_REGION                      = var.CLOUD_REGION # Cloud Region
  AIRPORT_CODE                    = var.AIRPORT_CODE
  projectNAme                     = local.projectNAme
  container_definitions           = file("task_definition.json")

}

module "cloudwatch" {
    source                                  = "../modules/cloudwatch"
    ECS_CLUSTER_ARN                         = module.ecs.ecs_cluster
    TASK_DEFINITION_ARN                     =  module.ecs.task_definition
    VPC_SUBNETS                             = [subnet-id]
    SCHEDULE_EXPRESSION                     = "$$cron$$"
    is_enabled                              = "true"
    projectNAme                             = local.projectNAme
}



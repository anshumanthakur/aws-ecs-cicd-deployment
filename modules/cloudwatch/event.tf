## AT&T Ctdi Event
resource "aws_cloudwatch_event_rule" "ctdi-event" {
  name                = "${var.projectNAme}_EVENT_RULE"
  description         = "Triggering ${var.projectNAme} task defination"
  schedule_expression = var.SCHEDULE_EXPRESSION
  role_arn            = null
  is_enabled          = var.is_enabled
  tags = {
      purpose = "To trigger ${var.projectNAme} ECS task defination"
      owner   = "meenakshi.upadhyay@pb.com"
  }
}



### Creating log group
resource "aws_cloudwatch_log_group" "ctdi-group" {
  name = "${var.projectNAme}_containerlogs"
  retention_in_days = 0
}

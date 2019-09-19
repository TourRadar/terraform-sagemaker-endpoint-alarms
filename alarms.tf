resource "aws_cloudwatch_metric_alarm" "invocation_4xx_errors" {
  for_each            = var.invocation_4xx_errors_checks
  alarm_name          = "${var.alarm_prefix}: ${each.key} Invocation 4xx Errors for ${var.endpoint_name}"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = var.invocation_4xx_errors_periods
  threshold           = each.value
  metric_name         = "Invocation4XXErrors"
  namespace           = "AWS/SageMaker"
  period              = var.invocation_4xx_errors_period
  statistic           = "Sum"
  alarm_description   = "Priority: ${each.key} Alarm is above of threshold: ${each.value}. Looks like endpoint triggering errors."
  treat_missing_data  = "notBreaching"
  alarm_actions       = var.actions
  tags                = var.tags

  dimensions = {
    EndpointName = var.endpoint_name
  }
}


resource "aws_cloudwatch_metric_alarm" "invocation_5xx_errors" {
  for_each            = var.invocation_5xx_errors_checks
  alarm_name          = "${var.alarm_prefix}: ${each.key} Invocation 5xx Errors for ${var.endpoint_name}"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = var.invocation_5xx_errors_periods
  threshold           = each.value
  metric_name         = "Invocation5XXErrors"
  namespace           = "AWS/SageMaker"
  period              = var.invocation_4xx_errors_period
  statistic           = "Sum"
  alarm_description   = "Priority: ${each.key} Alarm is above of threshold: ${each.value}. Looks like endpoint triggering errors."
  treat_missing_data  = "notBreaching"
  alarm_actions       = var.actions
  tags                = var.tags

  dimensions = {
    EndpointName = var.endpoint_name
  }
}


resource "aws_cloudwatch_metric_alarm" "minimum_invocations" {
  for_each            = var.minimum_invocations_checks
  alarm_name          = "${var.alarm_prefix}: ${each.key} Invocation count drop to ${each.value}"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = var.minimum_invocations_periods
  threshold           = each.value
  metric_name         = "Invocations"
  namespace           = "AWS/SageMaker"
  period              = var.minimum_invocations_period
  statistic           = "Sum"
  alarm_description   = "Priority: ${each.key} Count of invocations dropped to ${each.value}. Please check SerpApi if making the requests to ranker."
  treat_missing_data  = var.minimum_invocations_treat_missing_data
  alarm_actions       = var.actions
  tags                = var.tags

  dimensions = {
    EndpointName = var.endpoint_name
  }
}
resource "aws_cloudwatch_metric_alarm" "Invocation4XXErrors" {
  count               = var.invocation_4xx_errors_enabled ? 1 : 0
  alarm_name          = "${var.alarm_prefix}: Invocation 4xx Errors for ${var.endpoint_name}"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = var.invocation_4xx_errors_periods
  threshold           = var.invocation_4xx_errors_threshold
  metric_name         = "Invocation4XXErrors"
  namespace           = "AWS/SageMaker"
  period              = var.invocation_4xx_errors_period
  statistic           = "Sum"
  alarm_description   = "Alarm is above of threshold: ${var.invocation_4xx_errors_threshold}. Looks like endpoint triggering errors."
  treat_missing_data  = "notBreaching"
  alarm_actions       = var.actions
  tags                = var.tags

  dimensions = {
    EndpointName = var.endpoint_name
  }
}

resource "aws_cloudwatch_metric_alarm" "Invocation5XXErrors" {
  count               = var.invocation_5xx_errors_enabled ? 1 : 0
  alarm_name          = "${var.alarm_prefix}: Invocation 4xx Errors for ${var.endpoint_name}"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = var.invocation_5xx_errors_periods
  threshold           = var.invocation_5xx_errors_threshold
  metric_name         = "Invocation5XXErrors"
  namespace           = "AWS/SageMaker"
  period              = var.invocation_4xx_errors_period
  statistic           = "Sum"
  alarm_description   = "Alarm is above of threshold: ${var.invocation_5xx_errors_threshold}. Looks like endpoint triggering errors."
  treat_missing_data  = "notBreaching"
  alarm_actions       = var.actions
  tags                = var.tags

  dimensions = {
    EndpointName = var.endpoint_name
  }
}
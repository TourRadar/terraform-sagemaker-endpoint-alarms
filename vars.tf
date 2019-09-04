variable "actions" {
  description = "List of actions what should be executed"
  type        = list(string)
}
variable "endpoint_name" {
  type = string
}

variable "alarm_prefix" {
  type = string
}

variable "tags" {
  default = {}
}


variable "invocation_4xx_errors_enabled" {
  type    = bool
  default = true
}

variable "invocation_4xx_errors_threshold" {
  type    = number
  default = 1
}

variable "invocation_4xx_errors_periods" {
  type    = number
  default = 1
}

variable "invocation_4xx_errors_period" {
  type    = number
  default = 60
}




variable "invocation_5xx_errors_enabled" {
  type    = bool
  default = true
}

variable "invocation_5xx_errors_threshold" {
  type    = number
  default = 1
}

variable "invocation_5xx_errors_periods" {
  type    = number
  default = 1
}

variable "invocation_5xx_errors_period" {
  type    = number
  default = 60
}



variable "model_latency_enabled" {
  type    = bool
  default = true
}

variable "model_latency_threshold" {
  type        = number
  default     = 1
  description = "In ms"
}

variable "model_latency_periods" {
  type    = number
  default = 1
}

variable "model_latency_period" {
  type    = number
  default = 60
}




variable "minimum_invocations_periods" {
  type    = number
  default = 1
}

variable "minimum_invocations_period" {
  type    = number
  default = 60
}

variable "minimum_invocations_treat_missing_data" {
  type    = string
  default = "breaching"
}

variable "minimum_invocations_checks" {
  type = map(number)
  default = {
    P1 = 5
    P2 = 10
    P3 = 20
    P4 = 30
  }
}
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
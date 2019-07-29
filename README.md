# terraform-sagemaker-endpoint-alarms
Terraform module to automate creating standard sagemaker endpoint alarms

## Example usage
```terraform
module "sqs-alarms" {
  source       = "github.com/TourRadar/terraform-sagemaker-endpoint-alarms"
  endpoint_name     = "endpointName"
  actions      = ["snsarn etc"]
  alarm_prefix = "MyAlarmPrefix"
  tags = {
    Project = "SomeProject"
  }
}
```

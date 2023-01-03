variable "function_name" {
  description = "Lambda Function name"
  type        = string
  default     = ""
}

variable "s3_bucket" {
  description = "S3 bucket location containing the function's deployment package"
  type        = string
  default     = ""
}

variable "s3_key" {
  description = "S3 key of an object containing the function's deployment package"
  type        = string
  default     = ""
}

variable "runtime" {
  description = "Lambda Function runtime"
  type        = string
  default     = ""
}

variable "handler" {
  description = "Lambda Function entrypoint in your code"
  type        = string
  default     = ""
}

variable "authorization_type" {
  description = "The type of authentication that the Lambda Function URL uses."
  type        = string
  default     = "NONE"
}

variable "lambda_role_name" {
  description = "IAM role ARN attached to the Lambda Function. This governs both who / what can invoke your Lambda Function, as well as what resources our Lambda Function has access to. See Lambda Permission Model for more details."
  type        = string
}

variable "lambda_policy_name" {
  description = "IAM policy name. It override the default value, which is the same as role_name"
  type        = string
}

variable "lambda_policy_description" {
  description = "IAM policy name. It override the default value, which is the same as role_name"
  type        = string
  default     = null
}
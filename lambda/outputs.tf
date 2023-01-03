# Lambda Function
output "lambda_function_arn" {
  description = "The ARN of the Lambda Function"
  value       = try(aws_lambda_function.this.arn, "")
}

output "lambda_function_invoke_arn" {
  description = "The Invoke ARN of the Lambda Function"
  value       = try(aws_lambda_function.this.invoke_arn, "")
}

output "lambda_function_name" {
  description = "The name of the Lambda Function"
  value       = try(aws_lambda_function.this.function_name, "")
}

output "lambda_function_qualified_arn" {
  description = "The ARN identifying your Lambda Function Version"
  value       = try(aws_lambda_function.this.qualified_arn, "")
}

output "lambda_function_version" {
  description = "Latest published version of Lambda Function"
  value       = try(aws_lambda_function.this.version, "")
}

output "lambda_function_last_modified" {
  description = "The date Lambda Function resource was last modified"
  value       = try(aws_lambda_function.this.last_modified, "")
}

output "lambda_function_source_code_hash" {
  description = "Base64-encoded representation of raw SHA-256 sum of the zip file"
  value       = try(aws_lambda_function.this.source_code_hash, "")
}

output "lambda_function_source_code_size" {
  description = "The size in bytes of the function .zip file"
  value       = try(aws_lambda_function.this.source_code_size, "")
}

output "lambda_function_signing_job_arn" {
  description = "ARN of the signing job"
  value       = try(aws_lambda_function.this.signing_job_arn, "")
}

output "lambda_function_signing_profile_version_arn" {
  description = "ARN of the signing profile version"
  value       = try(aws_lambda_function.this.signing_profile_version_arn, "")
}

# Lambda Function URL
output "aws_lambda_function_url" {
  description = "The URL of the Lambda Function URL"
  value       = try(aws_lambda_function_url.this.function_url, "")
}

output "lambda_function_url_id" {
  description = "The Lambda Function URL generated id"
  value       = try(aws_lambda_function_url.this.url_id, "")
}


# IAM Role
output "lambda_role_arn" {
  description = "The ARN of the IAM role created for the Lambda Function"
  value       = try(aws_iam_role.lambda.arn, "")
}

output "lambda_role_name" {
  description = "The name of the IAM role created for the Lambda Function"
  value       = try(aws_iam_role.lambda.name, "")
}

output "lambda_role_unique_id" {
  description = "The unique id of the IAM role created for the Lambda Function"
  value       = try(aws_iam_role.lambda.unique_id, "")
}


# Attach a Managed IAM Policy to an IAM role
resource "aws_iam_role_policy_attachment" "lambda" {
  role       = aws_iam_role.lambda.name
  policy_arn = aws_iam_policy.lambda.arn
}


# Lambda Function resource
resource "aws_lambda_function" "this" {
  s3_bucket     = var.s3_bucket
  s3_key        = var.s3_key
  function_name = var.function_name
  role          = aws_iam_role.lambda.arn
  handler       = var.handler
  runtime       = var.runtime
  depends_on    = [aws_iam_role_policy_attachment.lambda]
}


# Create a Lambda function URL resource
resource "aws_lambda_function_url" "this" {
  function_name      = aws_lambda_function.this.function_name
  authorization_type = var.authorization_type
  depends_on         = [aws_lambda_function.this]
}
# IAM role for Lambda Function
resource "aws_iam_role" "lambda" {
  name        = var.lambda_role_name
  description = var.lambda_role_description

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}


# IAM policy for Lambda Function
resource "aws_iam_policy" "lambda" {
  name        = var.lambda_policy_name
  path        = "/"
  description = var.lambda_policy_description

  policy = <<EOF
{
 "Version": "2012-10-17",
 "Statement": [
   {
     "Action": [
       "logs:CreateLogGroup",
       "logs:CreateLogStream",
       "logs:PutLogEvents"
     ],
     "Resource": "arn:aws:logs:*:*:*",
     "Effect": "Allow"
   }
 ]
}
EOF
}

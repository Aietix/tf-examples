# Terraform modules, just for testing purpose. #

## Lambda: ##

### terraform plan -var-file=secrets.tfvar ### 

```
function_name             = "lambda_function_name"
s3_key                    = "lambda_function.zip"
s3_bucket                 = "XXXX"
runtime                   = "python3.9"
handler                   = "lambda_function.lambda_handler"
lambda_role_name          = "role_for_lambda"
lambda_policy_description = "There is no description for lambda role"  
lambda_policy_name        = "policy_for_lambda"
lambda_policy_description = "There is no description for lambda policy"   
```

terraform {
  required_version = ">= 0.12"
}

# ---------------------------------------------------------------------------------------------------------------------
# Create Lambda to HTTP API v2 proxy integration
# Provider Docs: https://www.terraform.io/docs/providers/aws/r/apigatewayv2_integration.html
# ---------------------------------------------------------------------------------------------------------------------

resource "aws_apigatewayv2_integration" "this" {
  api_id                 = var.api_id
  integration_method     = var.integration_method
  integration_type       = var.integration_type
  integration_uri        = var.invoke_arn
  payload_format_version = var.payload_format_version
}

# ---------------------------------------------------------------------------------------------------------------------
# Allow Lambda to be invoked by the HTTP API (v2) gateway
# Provider Docs: https://www.terraform.io/docs/providers/aws/r/lambda_permission.html
# Additional Docs: https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-troubleshooting-lambda.html
# ---------------------------------------------------------------------------------------------------------------------

resource "aws_lambda_permission" "this" {
  action        = "lambda:InvokeFunction"
  function_name = var.function_name
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${var.source_arn}/*/*"
}


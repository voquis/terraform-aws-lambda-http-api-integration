output "apigatewayv2_integration" {
  value = aws_apigatewayv2_integration.this
}

output "lambda_permission" {
  value = aws_lambda_permission.this
}

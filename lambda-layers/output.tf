output "layers" {
  value = [
    for layer in aws_lambda_layer_version.layer :
    {
      arn = layer.arn
    }
  ]
}

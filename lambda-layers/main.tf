variable "layers" {
  type = list(object({
    layer_name         = string
    compatible_runtimes = list(string)
    s3_bucket          = string
    s3_key             = string
  }))
}

resource "aws_lambda_layer_version" "layer" {
  count = length(var.layers)

  filename           = "${path.module}/layer_${count.index + 1}.zip"
  layer_name         = var.layers[count.index].layer_name
  compatible_runtimes = var.layers[count.index].compatible_runtimes
  source_code_hash   = filebase64sha256(filename)
  s3_bucket          = var.layers[count.index].s3_bucket
  s3_key             = var.layers[count.index].s3_key
}

output "layers" {
  value = [
    for layer in aws_lambda_layer_version.layer :
    {
      arn = layer.arn
    }
  ]
}

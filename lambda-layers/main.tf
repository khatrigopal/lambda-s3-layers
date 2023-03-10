
resource "aws_lambda_layer_version" "layer" {
  count = length(var.layers)

  
  layer_name         = var.layers[count.index].layer_name
  compatible_runtimes = var.layers[count.index].compatible_runtimes
 
  s3_bucket          = var.layers[count.index].s3_bucket
  s3_key             = var.layers[count.index].s3_key
}


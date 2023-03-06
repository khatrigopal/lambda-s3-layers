module "lambda_layers" {
  source = "./lambda-layers"

  layers = [
    {
      layer_name         = "my_layer_1"
      compatible_runtimes = ["nodejs12.x"]
      s3_bucket          = "bskhatrig-testing"
      s3_key             = "layers/my_layer_1.zip"
    },
    {
      layer_name         = "my_layer_2"
      compatible_runtimes = ["nodejs12.x", "python3.8"]
      s3_bucket          = "bskhatrig-testing"
      s3_key             = "layers/my_layer_2.zip"
    }
  ]
}

output "layer_1_arn" {
  value = module.lambda_layers.layers[0].arn
}

output "layer_2_arn" {
  value = module.lambda_layers.layers[1].arn
}

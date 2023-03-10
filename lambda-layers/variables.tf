variable "layers" {
  type = list(object({
    layer_name         = string
    compatible_runtimes = list(string)
    s3_bucket          = string
    s3_key             = string
  }))
}

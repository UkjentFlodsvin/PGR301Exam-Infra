variable "app_prefix" {default = "book-api"}

variable "pipeline_name" {default = "book-api-pipeline"}

variable "heroku_provider" {}

resource "null_resource" "action1" {
  provisioner "local-exec" {
    command = "echo ${var.heroku_provider}"
  }
}
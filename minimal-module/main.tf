resource "null_resource" "example" {
  for_each = var.customers_to_projects
  provisioner "local-exec" {
    command = "echo \"${each.key} -> ${each.value}\""
  }
}
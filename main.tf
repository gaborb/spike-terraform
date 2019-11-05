data "external" "customers_to_projects" {
  program = ["./get_customers_to_projects_mapping.sh"]
  query = {
    config_json  = "config.json"
  }
}

# resource "null_resource" "example" {
#   for_each = data.external.customers_to_projects.result
#   provisioner "local-exec" {
#     command = "echo \"${each.key} -> ${each.value}\""
#   }
# }

module "minimal" {
  source = "./minimal-module"

  customers_to_projects = data.external.customers_to_projects.result
}

output "resource_ids" {
  value = module.minimal.resource_ids
}
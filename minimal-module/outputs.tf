output "resource_ids" {
  value = [
    for instance in null_resource.example:
    instance.id
  ]
}
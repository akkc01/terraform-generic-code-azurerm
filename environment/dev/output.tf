output "All_resource_groups" {
  value = module.rg.names
}

output "All_storage_accounts" {
  value = module.storage.storage_account_names
}

output "All_public_ip_addresses" {
  value = module.pips.public_ip_name_and_address
}


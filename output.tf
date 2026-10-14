output "instance_id" {
  description = "ID of the EC2 instance"
  value       = module.web.instance_id
}

output "public_ip" {
  description = "Public IP address of the web server"
  value       = module.web.public_ip
}

output "website_url" {
  description = "URL to open in a browser"
  value       = "http://${module.web.public_ip}"
}

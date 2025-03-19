module "route53" {
  source         = "../"
  domain_name    = var.domain_name
  subdomain_name = var.subdomain_name
  lb_dns_name    = var.lb_dns_name
  lb_zone_id     = var.lb_zone_id
}

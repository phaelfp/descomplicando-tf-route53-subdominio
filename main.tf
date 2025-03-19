resource "aws_route53_zone" "main" {
  name = var.domain_name
}

resource "aws_route53_record" "subdomain" {
  zone_id = aws_route53_zone.main.zone_id
  name    = var.subdomain_name
  type    = "A"

  alias {
    name                   = var.lb_dns_name
    zone_id                = var.lb_zone_id
    evaluate_target_health = true
  }
}

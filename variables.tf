variable "domain_name" {
  description = "Nome do domínio principal (exemplo.com)."
  type        = string
}

variable "subdomain_name" {
  description = "Nome do subdomínio a ser criado (exemplo.app.exemplo.com)."
  type        = string
}

variable "lb_dns_name" {
  description = "Nome DNS do Load Balancer para configurar o apontamento."
  type        = string
}

variable "lb_zone_id" {
  description = "ID da zona do Load Balancer."
  type        = string
}

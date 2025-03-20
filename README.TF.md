<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.91.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_route53_record.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_zone.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_zone) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | Nome do domínio principal (exemplo.com). | `string` | n/a | yes |
| <a name="input_lb_dns_name"></a> [lb\_dns\_name](#input\_lb\_dns\_name) | Nome DNS do Load Balancer para configurar o apontamento. | `string` | n/a | yes |
| <a name="input_lb_zone_id"></a> [lb\_zone\_id](#input\_lb\_zone\_id) | ID da zona do Load Balancer. | `string` | n/a | yes |
| <a name="input_subdomain_name"></a> [subdomain\_name](#input\_subdomain\_name) | Nome do subdomínio a ser criado (exemplo.app.exemplo.com). | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
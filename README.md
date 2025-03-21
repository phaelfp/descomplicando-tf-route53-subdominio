# Projeto de Conclusão de Curso do Descomplicando Terraform

## Modulo de Subdominio (route53)

Este módulo é responsável por criar um subdominio.

A documentação do módulo gerada pelo terraform-docs se encontra [aqui](README.TF.md)

## Exemplo de uso

Tem um exemplo completo do uso no diretório exemple caso queira ir logo para a parte prática.

Precisamos da seguinte estrutura de arquivos.

```css
│── main.tf
│── provider.tf
│── variables.tf
```

### provider.tf

```tf
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

```

Não se esqueça que o bucket s3 e o dynamodb tem que existir para funcionar.

### variavles.tf

```tf
variable "domain_name" {
  default = "exemplo.com"
}

variable "subdomain_name" {
  default = "app.exemplo.com"
}

variable "lb_dns_name" {
  default = "meu-lb-123456.elb.amazonaws.com"
}

variable "lb_zone_id" {
  default = "Z3AADJGX6KTTL2"
}

variable "aws_region" {
  default = "us-east-1"
}

```

Temos aqui 2 variáveis uma para idendificar a região.

A Outra com o nome do subdomínio que será criado o certificado digital ssl

### main.tf

```tf
module "route53" {
  source         = "../"
  domain_name    = var.domain_name
  subdomain_name = var.subdomain_name
  lb_dns_name    = var.lb_dns_name
  lb_zone_id     = var.lb_zone_id
}

```

Este main.tf o source está apontando para a pasta raiz, mas se você estiver já utilizando o módulo em outro utilize o código abaixo que está apontando para o repositório git

```tf
module "route53" {
  source         = "github.com/phaelfp/descomplicando-tf-route53-subdominio?ref=v1.0.0"
  domain_name    = var.domain_name
  subdomain_name = var.subdomain_name
  lb_dns_name    = var.lb_dns_name
  lb_zone_id     = var.lb_zone_id
}

```

### Execução

Tendo as chaves de acesso a AWS configuradas no terminal corretamente é só executar os comando abaixo.

```sh
terraform init
terraform plan -out tfplan
terraform apply "tfplan"
```

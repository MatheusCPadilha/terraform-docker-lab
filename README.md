# Provisionamento de Container via Terraform (Infraestrutura como Código)

Laboratório prático de Terraform usando o provider Docker, sem dependência de conta cloud. Demonstra o fluxo completo de IaC: declaração, plano, aplicação, variáveis e modularização.

## O que foi implementado

- Provisionamento de imagem e container Docker via Terraform (provider `kreuzwerker/docker`)
- Uso de variáveis (`variables.tf`) e arquivo de valores (`terraform.tfvars`), permitindo reconfigurar porta, nome e imagem sem alterar o código principal
- Modularização: lógica de criação de container isolada em `modules/docker-app`, reutilizável para múltiplas instâncias
- Fluxo padrão de Terraform: `init` → `plan` → `apply`

## O que exigiu mais atenção

Ao mover a lógica para dentro de um módulo, foi necessário declarar o bloco `required_providers` também dentro do módulo — essa configuração não é herdada automaticamente do arquivo raiz, e sua ausência gera erro de provider não encontrado.

## Evidências de execução

![Estrutura modularizada e container em execução](docs/prints/01-terraform-modulos.png)

## Como reproduzir

```bash
terraform init
terraform plan
terraform apply
curl http://localhost:9090
```

## Stack utilizada

Terraform · Docker · HCL

[![English](https://img.shields.io/badge/lang-en-blue.svg)](README.md)
[![Português](https://img.shields.io/badge/lang-pt--br-green.svg)](README.pt-br.md)

# Infraestrutura Global 00-global - Recursos Compartilhados da AWS

Esta pasta contém componentes de infraestrutura compartilhados do ambiente `data-ops-lab`, como buckets S3, roles de IAM e outros recursos globais reutilizados em múltiplos projetos.

---

## 📁 Por que esta pasta existe?

A pasta `00-global` foi criada para:

- Centralizar a criação de recursos AWS que são **globais ou compartilhados entre projetos**.
- Evitar duplicação de roles, buckets, chaves KMS etc.
- Garantir consistência, segurança e governança na infraestrutura.
- Servir como base para os módulos específicos de projeto (ex: Lambda, Observability, Ingestão).

---

## 🔨 Que tipos de recursos pertencem aqui?

Exemplos típicos:

- Buckets S3 usados como backend do Terraform.
- IAM Roles assumidas pelo GitHub Actions.
- Chaves KMS compartilhadas.
- CloudTrail ou S3 para logs centralizados.
- VPCs e componentes de rede compartilhados.

---

## ✅ Como usar

1. Acesse a pasta:

```bash
cd data-ops-lab/aws/00-global

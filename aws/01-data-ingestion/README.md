# 01 - Data Ingestion (Batch) - AWS

Este módulo contém exemplos de ingestão de dados em **batch** na AWS, com foco em soluções simples, escaláveis e de baixo custo — ideais para iniciar pipelines de dados dentro de boas práticas de DataOps.

---

## 🎯 Objetivo

Demonstrar como realizar ingestões em batch de forma automatizada, versionada e observável, utilizando **AWS Lambda** para buscar dados de fontes externas e armazená-los no **Amazon S3** com organização por data.

---

## 🧱 Subprojetos disponíveis

| Subprojeto                      | Descrição |
|----------------------------------|-----------|
| `lambda_ingest_api_to_s3/`       | Ingestão diária de dados de uma API pública para o S3, com versionamento por data |

---

## 🧰 Tecnologias e Serviços Usados

- **AWS Lambda**
- **Amazon S3**
- **Amazon EventBridge (agendamento)**
- **Terraform** (infraestrutura como código)
- **AWS CloudWatch** (logs e métricas)

---

## 🧪 Princípios aplicados de DataOps

- ⚙️ Infraestrutura como código (IaC)
- 🔁 Pipelines versionadas e reprodutíveis
- 📊 Observabilidade com logs e dashboards
- 🧪 Testes básicos para garantir sucesso da ingestão
- 💰 Simplicidade e controle de custos (FinOps)

---

## 🚀 Como usar

1. Acesse o subprojeto desejado:
```bash
cd lambda_ingest_api_to_s3


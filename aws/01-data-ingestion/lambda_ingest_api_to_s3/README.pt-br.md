[![English](https://img.shields.io/badge/lang-en-blue.svg)](README.md)
[![Português](https://img.shields.io/badge/lang-pt--br-green.svg)](README.pt-br.md)

# Lambda - Ingestão de API para S3 (Batch)

> Parte do módulo `01-data-ingestion` da especialização em DataOps na AWS.

---

## 📌 Objetivo

Criar uma função Lambda agendada (em batch) para:

- Buscar dados de uma API pública  
- Armazenar os dados brutos no Amazon S3  
- Organizar os arquivos por data (`YYYY/MM/DD`)  
- Automatizar o deploy com GitHub Actions  

---

## 🧰 Tecnologias e Serviços Utilizados

- AWS Lambda (Python)  
- Amazon S3  
- EC2 + Airflow (agendamento)  
- AWS CloudWatch (logs)  
- GitHub Actions (CI/CD)  
- Terraform (infraestrutura como código)  

---

## 🧱 Estrutura do Projeto

```bash
lambda_ingest_api_to_s3/
├── lambda/                        # Código Python da função Lambda
│   └── handler.py
├── .github/workflows/
│   └── deploy_lambda.yml          # Pipeline do GitHub Actions
├── terraform/
│   └── main.tf                    # Infraestrutura da função e do S3
├── deploy.sh                      # Script de deploy local (manual)
├── requirements.txt
└── README.md

# Lambda - Ingestão de API para S3 (Batch)

> Parte do módulo `01-data-ingestion` da especialização em DataOps na AWS.

---

## 📌 Objetivo

Criar uma função Lambda que roda em batch (agendada) para:

- Buscar dados de uma API pública
- Armazenar os dados brutos no Amazon S3
- Organizar os arquivos por data (`YYYY/MM/DD`)
- Automatizar o deploy com GitHub Actions

---

## 🧰 Tecnologias e Serviços Utilizados

- AWS Lambda (Python)
- Amazon S3
- Amazon EventBridge (agendamento)
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
│   └── deploy_lambda.yml          # Pipeline GitHub Actions
├── terraform/
│   └── main.tf                    # Infraestrutura da função e S3
├── deploy.sh                      # Script local de deploy (manual)
├── requirements.txt
└── README.md


[![English](https://img.shields.io/badge/lang-en-blue.svg)](README.md)
[![Português](https://img.shields.io/badge/lang-pt--br-green.svg)](README.pt-br.md)

# Lambda - API to S3 Ingestion (Batch)

> Part of the `01-data-ingestion` module from the DataOps specialization on AWS.

---

## 📌 Objective

Create a scheduled batch Lambda function to:

- Fetch data from a public API  
- Store raw data in Amazon S3  
- Organize files by date (`YYYY/MM/DD`)  
- Automate deployment with GitHub Actions  

---

## 🧰 Technologies and Services Used

- AWS Lambda (Python)  
- Amazon S3  
- EC2 + Airflow (scheduling)  
- AWS CloudWatch (logs)  
- GitHub Actions (CI/CD)  
- Terraform (infrastructure as code)  

---

## 🧱 Project Structure

```bash
lambda_ingest_api_to_s3/
├── lambda/                        # Python code for the Lambda function
│   └── handler.py
├── .github/workflows/
│   └── deploy_lambda.yml          # GitHub Actions pipeline
├── terraform/
│   └── main.tf                    # Infrastructure for the function and S3
├── deploy.sh                      # Local deployment script (manual)
├── requirements.txt
└── README.md

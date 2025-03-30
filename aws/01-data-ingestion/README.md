[![English](https://img.shields.io/badge/lang-en-blue.svg)](README.md)
[![Português](https://img.shields.io/badge/lang-pt--br-green.svg)](README.pt-br.md)

# 01 - Data Ingestion (Batch) - AWS (Orchestrated with Airflow)

This module contains examples of **batch data ingestion on AWS**, now fully orchestrated via **Apache Airflow** to ensure end-to-end observability, automation, and traceability across the entire pipeline lifecycle.

It focuses on simple, scalable, and cost-effective solutions — ideal for initializing data pipelines following DataOps best practices, with a unified orchestration layer.

---

## 🎯 Objective

Demonstrate how to perform batch ingestions in an automated, version-controlled, and observable way using **Apache Airflow** to orchestrate the following:

- Trigger data ingestion runs  
- Invoke AWS Lambda functions to extract data from external APIs  
- Store raw data in **Amazon S3**, organized by date (`YYYY/MM/DD`)  
- Capture logs and metrics for monitoring and alerting  

---

## 🧱 Subprojects Available

| Subproject                    | Description |
|------------------------------|-------------|
| `lambda_ingest_api_to_s3/`   | Daily ingestion of public API data into S3, triggered and monitored by Airflow DAGs |

---

## 🧰 Technologies and Services Used

- **EC2 + Apache Airflow** (orchestration)  
- **AWS Lambda**  
- **Amazon S3**  
- **Terraform** (infrastructure as code)  
- **AWS CloudWatch** (logs and metrics)  
- **GitHub Actions** (CI/CD for DAGs and infrastructure)  

---

## 🧪 Applied DataOps Principles

- ⚙️ Infrastructure as Code (IaC) with Terraform  
- 🔁 Reproducible and version-controlled data pipelines  
- 🧭 Centralized orchestration with Apache Airflow  
- 📊 Observability via CloudWatch and Airflow logs  
- 🧪 Automated testing and validation of data ingestion  
- 💰 Cost control and lightweight architecture (FinOps)  

---

## 🚀 How to Use

1. Navigate to the desired subproject:
```bash
cd lambda_ingest_api_to_s3

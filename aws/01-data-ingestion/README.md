# 01 - Data Ingestion (Batch) - AWS

This module contains examples of **batch** data ingestion on AWS, focusing on simple, scalable, and low-cost solutions — ideal for starting data pipelines aligned with DataOps best practices.

---

## 🎯 Objective

Demonstrate how to perform batch ingestions in an automated, versioned, and observable way, using **AWS Lambda** to fetch data from external sources and store it in **Amazon S3**, organized by date.

---

## 🧱 Available Subprojects

| Subproject                    | Description |
|------------------------------|-------------|
| `lambda_ingest_api_to_s3/`   | Daily ingestion of data from a public API into S3, with date-based versioning |

---

## 🧰 Technologies and Services Used

- **AWS Lambda**  
- **Amazon S3**  
- **Amazon EventBridge** (scheduling)  
- **Terraform** (infrastructure as code)  
- **AWS CloudWatch** (logs and metrics)  

---

## 🧪 Applied DataOps Principles

- ⚙️ Infrastructure as Code (IaC)  
- 🔁 Versioned and reproducible pipelines  
- 📊 Observability with logs and dashboards  
- 🧪 Basic tests to ensure ingestion success  
- 💰 Simplicity and cost control (FinOps)  

---

## 🚀 How to Use

1. Navigate to the desired subproject:
```bash
cd lambda_ingest_api_to_s3

[![English](https://img.shields.io/badge/lang-en-blue.svg)](README.md)
[![Português](https://img.shields.io/badge/lang-pt--br-green.svg)](README.pt-br.md)

# 00-global Infrastructure - Shared AWS Resources

This folder contains shared infrastructure components for the `data-ops-lab` environment, such as S3 buckets, IAM roles, and other global AWS resources that are reused across multiple projects.

---

## 📁 Why this folder exists

The `00-global` folder was created to:

- Centralize the creation of AWS resources that are **global or cross-project**.
- Prevent duplication of resources like IAM roles, KMS keys, or Terraform state buckets.
- Enforce consistency and security across the environment.
- Serve as a base layer for individual project deployments (e.g., Lambda, Data Ingestion, Monitoring).

---

## 🔨 What kind of resources belong here?

Typical examples:

- S3 buckets used as Terraform state backends.
- IAM roles to be assumed by GitHub Actions.
- Shared KMS keys.
- Logging infrastructure (CloudTrail, S3 access logs).
- VPCs or networking components (if reused across services).

---

## ✅ How to Use

1. Navigate into this folder:

```bash
cd data-ops-lab/aws/00-global

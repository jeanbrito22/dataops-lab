[![English](https://img.shields.io/badge/lang-en-blue.svg)](README.md)
[![Português](https://img.shields.io/badge/lang-pt--br-green.svg)](README.pt-br.md)

# 01 - Ingestão de Dados (Batch) - AWS (Orquestrado com Airflow)

Este módulo contém exemplos de **ingestão de dados em batch na AWS**, agora totalmente orquestrados via **Apache Airflow**, garantindo observabilidade de ponta a ponta, automação e rastreabilidade ao longo de todo o ciclo de vida da pipeline.

O foco está em soluções simples, escaláveis e de baixo custo — ideais para iniciar pipelines de dados seguindo boas práticas de DataOps, com uma camada unificada de orquestração.

---

## 🎯 Objetivo

Demonstrar como realizar ingestões em batch de forma automatizada, versionada e observável utilizando o **Apache Airflow** para orquestrar as seguintes etapas:

- Acionar execuções de ingestão de dados  
- Invocar funções AWS Lambda para extrair dados de APIs externas  
- Armazenar os dados brutos no **Amazon S3**, organizados por data (`YYYY/MM/DD`)  
- Capturar logs e métricas para monitoramento e alertas  

---

## 🧱 Subprojetos Disponíveis

| Subprojeto                    | Descrição |
|------------------------------|-----------|
| `lambda_ingest_api_to_s3/`   | Ingestão diária de dados de uma API pública para o S3, acionada e monitorada por DAGs no Airflow |

---

## 🧰 Tecnologias e Serviços Utilizados

- **EC2 + Apache Airflow** (orquestração)  
- **AWS Lambda**  
- **Amazon S3**  
- **Terraform** (infraestrutura como código)  
- **AWS CloudWatch** (logs e métricas)  
- **GitHub Actions** (CI/CD para DAGs e infraestrutura)  

---

## 🧪 Princípios de DataOps Aplicados

- ⚙️ Infraestrutura como Código (IaC) com Terraform  
- 🔁 Pipelines reprodutíveis e versionadas  
- 🧭 Orquestração centralizada com Apache Airflow  
- 📊 Observabilidade com CloudWatch e logs do Airflow  
- 🧪 Testes automatizados e validação da ingestão de dados  
- 💰 Controle de custos e arquitetura enxuta (FinOps)  

---

## 🚀 Como Usar

1. Acesse o subprojeto desejado:
```bash
cd lambda_ingest_api_to_s3

[![English](https://img.shields.io/badge/lang-en-blue.svg)](README.md)
[![Português](https://img.shields.io/badge/lang-pt--br-green.svg)](README.pt-br.md)

# DataOps Lab - AWS

Este diretório contém uma coleção de projetos e componentes práticos focados em DataOps utilizando os principais serviços da AWS.

O objetivo é criar uma base sólida e aplicada em **engenharia de dados, arquitetura de dados, qualidade de dados, observabilidade, performance e FinOps**, utilizando boas práticas de automação, versionamento e infraestrutura como código.

---

## 🧱 Estrutura dos Módulos

| Módulo | Descrição |
|--------|-----------|
| `01-data-ingestion`         | Ingestão de dados com Lambda e S3 |
| `02-data-modeling`          | Modelagem de dados com dbt + Athena + Glue Catalog |
| `03-ci-cd`                  | Automatização de deploys com GitHub Actions |
| `04-data-quality`           | Testes de qualidade com dbt e suas bibliotecas |
| `05-orchestration`          | Orquestração de pipelines com Airflow em EC2 |
| `06-observability`          | Monitoramento de jobs e queries com CloudWatch |
| `07-governance-lineage`     | Catálogo de dados e lineage com DataHub |
| `08-cloud-architecture`     | Diagramas e arquitetura de referência |
| `09-cases`                  | Casos de uso aplicados (marketing, ecommerce, etc.) |
| `10-performance-cost`       | Módulos de FinOps e performance (tempo e custo de execução) |

---

## 🎯 Objetivos

- Criar pipelines de dados em ambientes controláveis (não gerenciados)  
- Monitorar e controlar qualidade, performance, observabilidade e custo  
- Aplicar conceitos de DevOps/DataOps em todas as camadas da stack  
- Demonstrar conhecimento prático e multiplataforma (GCP, AWS, Databricks)  

---

## 🚀 Como Usar

Cada módulo possui seu próprio `README.md` com:
- Explicação sobre o contexto do projeto  
- Instruções de uso (infraestrutura, código, dependências)  
- Scripts de provisionamento (Terraform, bash)  
- Exemplos de execução local ou na nuvem  

---

## 📌 Requisitos Mínimos

- Conta AWS com permissões para criar recursos (IAM, EC2, S3, Glue, Athena, etc.)  
- Docker e Docker Compose  
- Python 3.10+ com virtualenv  
- Terraform (opcional, mas recomendado)  

---

## 📬 Contribuição e Evolução

Este repositório será expandido com novos exemplos, testes, boas práticas e casos reais.

Sinta-se à vontade para sugerir melhorias, abrir issues ou contribuir com ideias e automações.

---

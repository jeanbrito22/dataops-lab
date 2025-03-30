# DataOps Lab - AWS

Este diretório contém uma coleção de projetos e componentes práticos focados em DataOps utilizando os principais serviços da AWS.

O objetivo é criar uma base sólida e aplicada em **engenharia de dados, arquitetura de dados, qualidade, observabilidade, performance e FinOps**, utilizando boas práticas de automação, versionamento e infraestrutura como código.

---

## 🧱 Estrutura dos Módulos

| Módulo | Descrição |
|--------|-----------|
| `01-data-ingestion`         | Ingestão de dados com Kinesis, Lambda e S3 |
| `02-data-modeling`          | Modelagem de dados com dbt + Athena + Glue Catalog |
| `03-ci-cd`                  | Automatização de deploys com GitHub Actions |
| `04-data-quality`           | Testes de qualidade com Great Expectations |
| `05-orchestration`          | Orquestração de pipelines com Airflow em EC2 |
| `06-observability`          | Monitoramento de jobs e queries com CloudWatch |
| `07-governance-lineage`     | Catálogo de dados e lineage com DataHub |
| `08-cloud-architecture`     | Diagramas e arquitetura de referência |
| `09-cases`                  | Casos de uso aplicados (marketing, ecommerce, etc.) |
| `10-performance-cost`       | Módulos de FinOps e performance (tempo e custo de execução) |

---

## 🎯 Objetivos

- Criar pipelines de dados em ambientes controláveis (não gerenciados)
- Controlar qualidade, performance, observabilidade e custo
- Aplicar conceitos de DevOps/DataOps em cada camada da stack
- Demonstrar conhecimento prático e multiplataforma (GCP, AWS, Databricks)

---

## 🚀 Como usar

Cada módulo possui um `README.md` próprio com:
- Explicações sobre o contexto do projeto
- Instruções de uso (infraestrutura, código, dependências)
- Scripts de provisionamento (Terraform, bash)
- Exemplos de execução local ou em nuvem

---

## 📌 Requisitos mínimos

- Conta AWS com permissão para criar recursos (IAM, EC2, S3, Glue, Athena, etc.)
- Docker e Docker Compose
- Python 3.10+ com virtualenv
- Terraform (opcional, mas recomendado)

---

## 📬 Contribuição e evolução

Este repositório será expandido com novos exemplos, testes, boas práticas e casos reais.

Sinta-se à vontade para sugerir melhorias, abrir issues ou contribuir com ideias e automações.

---


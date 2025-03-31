[![English](https://img.shields.io/badge/lang-en-blue.svg)](README.md)
[![Português](https://img.shields.io/badge/lang-pt--br-green.svg)](README.pt-br.md)

# Backend Remoto de Terraform - Bucket S3

Esta pasta cria e gerencia o bucket S3 usado como **backend remoto do estado do Terraform** para todos os projetos dentro do ambiente `data-ops-lab`.

---

## 🎯 Objetivo

Armazenar o estado do Terraform (`terraform.tfstate`) remotamente em um bucket S3 centralizado, versionado e seguro permite:

- Colaboração entre membros da equipe em diferentes máquinas
- Recuperação segura e consistência do estado
- Separação entre infraestrutura e lógica de aplicação
- Integração com CI/CD usando GitHub Actions

---

## 📦 Recursos Criados

- ✅ Um **bucket S3**: `your-state-bucket`
- ✅ Versionamento ativado
- 🔒 Protegido contra destruição com `lifecycle.prevent_destroy = true`

---

A seguinte **policy inline** foi atribuída ao usuário IAM `terraform`:

```json
{
	"Version": "2012-10-17",
	"Statement": [
		{
			"Sid": "FullAccessToSpecificBucket",
			"Effect": "Allow",
			"Action": [
				"s3:CreateBucket",
				"s3:DeleteBucket",
				"s3:ListBucket",
				"s3:GetBucket*",
				"s3:PutBucket*",
				"s3:GetAccelerateConfiguration",
				"s3:GetEncryptionConfiguration",
				"s3:GetLifecycleConfiguration",
				"s3:GetReplicationConfiguration",
				"s3:GetBucketPublicAccessBlock",
				"s3:GetBucketOwnershipControls",
				"s3:GetObject",
				"s3:PutObject",
				"s3:DeleteObject",
				"s3:ListMultipartUploadParts",
				"s3:AbortMultipartUpload"
			],
			"Resource": [
				"arn:aws:s3:::your-bucket-terraform-state",
				"arn:aws:s3:::your-bucket-terraform-state/*"
			]
		}
	]
}
```

✅ Isso garante compatibilidade com todas as ações que o provider da AWS tenta executar, mantendo o acesso restrito apenas a esse bucket.

---

## 📁 Por que esta pasta existe

Esta pasta (`terraform_state`) faz parte da estrutura `00-global` para isolar a **infraestrutura fundamental**, como roles compartilhadas, chaves de criptografia e armazenamento de estado que podem ser reutilizados entre os projetos.

---

## ✅ Como usar

1. Configure o usuário `terraform` no seu CLI da AWS:

```bash
aws configure --profile dataops
```

2. Acesse esta pasta:

```bash
cd data-ops-lab/aws/global/terraform_state
```

3. Inicialize e aplique o Terraform:

```bash
terraform init
terraform apply
```

---

## 🔄 Importando recursos existentes

Se o bucket S3 já foi criado manualmente ou parcialmente:

```bash
terraform state rm aws_s3_bucket.terraform_state
terraform import aws_s3_bucket.terraform_state your-state-bucket
```

Se você gerenciar configurações adicionais separadamente (ex: versionamento):

```bash
terraform import aws_s3_bucket_versioning.versioning your-state-bucket
```

---

## 📌 Uso em outros projetos

Para utilizar este bucket como backend remoto em outro projeto, adicione o seguinte no seu `provider.tf`:

```hcl
terraform {
  backend "s3" {
    bucket = "your-state-bucket"
    key    = "lambda_ingest_api_to_s3/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
  }
}
```

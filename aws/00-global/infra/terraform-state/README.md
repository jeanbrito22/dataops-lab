[![English](https://img.shields.io/badge/lang-en-blue.svg)](README.md)
[![Português](https://img.shields.io/badge/lang-pt--br-green.svg)](README.pt-br.md)

# Terraform Remote State Backend - S3 Bucket

This folder creates and manages the S3 bucket used as a **remote Terraform state backend** for all projects under the `data-ops-lab` environment.

---

## 🎯 Purpose

Storing the Terraform state (`terraform.tfstate`) remotely in a centralized, versioned, and secured S3 bucket allows:

- Team collaboration across multiple machines
- Safe recovery and state consistency
- Separation between infra and app logic
- CI/CD integration via GitHub Actions

---

## 📦 Resources Created

- ✅ One **S3 bucket**: `your-state-bucket`
- ✅ Versioning enabled
- 🔒 Protected from destroy via `lifecycle.prevent_destroy = true`

---

The following **inline policy** was attached to the IAM user `terraform`:

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

✅ This ensures compatibility with all AWS provider behavior while keeping the access restricted to a single bucket.

---

## 📁 Why this folder exists

This folder (`terraform_state`) is part of the `00-global` structure to isolate **foundational infrastructure**, like shared roles, encryption keys and state storage, that can be reused across projects.

---

## ✅ How to use

1. Set up the `terraform` user in your AWS CLI:

```bash
aws configure --profile dataops
```

2. Navigate to this folder:

```bash
cd data-ops-lab/aws/global/terraform_state
```

3. Initialize and apply Terraform:

```bash
terraform init
terraform apply
```

---

## 🔄 Importing existing resources

If the S3 bucket was already created manually or partially:

```bash
terraform state rm aws_s3_bucket.terraform_state
terraform import aws_s3_bucket.terraform_state your-state-bucket
```

If you manage other configurations separately (e.g., versioning):

```bash
terraform import aws_s3_bucket_versioning.versioning your-state-bucket
```

---

## 📌 Use in other projects

To use this bucket as a remote backend in your project, add the following to your `provider.tf`:

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


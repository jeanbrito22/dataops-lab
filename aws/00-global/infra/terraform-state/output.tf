output "terraform_state_bucket_name" {
  description = "Nome do bucket criado para armazenar o terraform state"
  value       = aws_s3_bucket.terraform_state.id
}

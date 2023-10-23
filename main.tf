# Declara a versão mínima do provedor AWS necessária para este código Terraform
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  
}
# Define o provedor AWS e especifica a região onde as operações serão realizadas
provider "aws" {
  region  = "us-east-1"
}
# Resource para criar uma instância AWS usando uma AMI específica
resource "aws_instance" "code_iac" {
  # ID da AMI que será usada para a instância
  ami           = "ami-0fc5d935ebf8bc3bc"

  # Tipo de instância
  instance_type = "t2.micro"

  # Nome da chave SSH para acessar a instância
  key_name      = "iac_code_key"

  # Tags para identificar e organizar a instância
  tags = {
    Name = "code_iac"
  }
}
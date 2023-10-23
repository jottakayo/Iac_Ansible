# Título do projeto

## Provisionamento de Instância EC2 com Terraform e Configuração com Ansible

## 🚀 Começando

Este guia oferece um passo a passo para provisionar uma instância EC2 na AWS utilizando Terraform e prepará-la usando Ansible. Antes de começar, assegure-se de que o ambiente AWS esteja configurado corretamente.

Consulte **[Terraform](https://developer.hashicorp.com/terraform?product_intent=terraform)****[Ansible](hhttps://www.ansible.com)** para saber como implantar o projeto.

### 📋 Configuração do Provedor AWS

Antes de tudo, é necessário configurar o provedor AWS. Consulte a documentação oficial da Terraform para detalhes e exemplos de configuração.

Após obter as configurações desejadas, inicialize o projeto com o comando:

```
terraform init
```
Este comando baixa os plugins necessários e prepara o ambiente para criar e gerenciar recursos de infraestrutura. Certifique-se de que os plugins estão atualizados; você pode encontrá-los no arquivo .terraform.lock.hcl.

### 🔧 Provisionamento da Instância EC2

No arquivo instances.tf, você encontrará a configuração para uma instância Amazon Linux 2023 AMI 64-bit. Ele também inclui um script bash que será executado durante a inicialização da instância, criando diretórios específicos na pasta /home/ubuntu.

Após definir as configurações, utilize o comando terraform plan para visualizar as mudanças planejadas na infraestrutura antes de aplicá-las. Este comando é crucial para entender as alterações que serão feitas.

```
terraform plan
```

Após revisar o plano, aplique as configurações com o comando:

```
terraform apply
```

Este comando implementa as alterações e provisiona a máquina na AWS.

## Configuração e Gerenciamento com Ansible

Após a criação da VM, use Ansible para configurá-la. Dois arquivos são essenciais para este processo:

hosts.yml

Este arquivo de inventário do Ansible lista os hosts nos quais você deseja executar tarefas. Certifique-se de manter a indentação correta de acordo com a documentação do **[Ansible](https://docs.ansible.com/ansible/latest/inventory_guide/intro_inventory.html)**.

```
---
all:
  hosts:
    ec2-instance:
      ansible_host: <IP_DA_INSTANCIA>
      ansible_user: ubuntu
      ansible_ssh_private_key_file: /seu/caminho/tá/iac_code_key.pem

```

playbook.yml
Este arquivo de playbook do Ansible contém tarefas que serão executadas nos hosts listados no arquivo de inventário.

Finalmente, execute o playbook com o seguinte comando:

```
ansible-playbook -i hosts.yml playbook.yml

```

### ⌨️ Agora, sua instância EC2 está configurada e pronta para uso.
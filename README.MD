Olá gente, de forma básica irei expor o que fiz para
Provisionar uma Instância EC2 na AWS usando Terraform

Este guia apresenta os passos para configurar o provedor AWS e provisionar uma instância EC2 utilizando Terraform.Porém anteriormente é necessário preparar o ambiente AWS primeiro.

Configuração do Provedor AWS

Primeiro, é necessário configurar o provedor AWS. Você pode encontrar informações detalhadas e exemplos de configuração no site da Terraform.io. O próprio site é muito explicativo então é recomendável seguir as orientações fornecidas no site, pois ele é regularmente atualizado.

Após obter as configurações desejadas, execute o comando terraform init no seu terminal. Este comando inicializa o projeto, baixando os plugins necessários e preparando o ambiente para criar e gerenciar recursos de infraestrutura.

Verifica se os plugins estão atualizados; você pode encontrá-los no arquivo '.terraform.lock.hcl'.

Provisionamento da Instância EC2

No arquivo 'instances.tf' que criei, você encontrará a configuração para uma instância Amazon Linux 2023 AMI 64-bit e descrições de um script bash que será executado durante a inicialização da instância. Ele cria diretórios específicos na pasta /home/ubuntu.
Uma AMI é um modelo pronto utilizado para lançar servidores virtuais na nuvem da AWS.

Após definir as configurações, utilize o comando terraform plan. Esse comando é crucial, pois permite visualizar as mudanças planejadas na infraestrutura antes de aplicá-las. Ele analisa os arquivos de configuração, compara o estado atual da infraestrutura com a configuração desejada e lista as ações que serão executadas, como criar, modificar ou destruir recursos.

Após revisar o plano, você pode implementar as configurações na AWS usando o comando terraform apply. Isso aplica as alterações e provisiona a máquina nos servidores da AWS.

Agora a instância EC2 está pronta para uso nos servidores da AWS. Olhe e revise para manter suas configurações conforme necessário para atender aos requisitos do seu projeto ^^.


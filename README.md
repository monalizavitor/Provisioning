# Projeto de automatização de provisionamento de infraestrura

## Tecnologias utilizadas

- Terraform
- Ansible
- Python
- Django

## Pré Requisitos
- Precisa ter uma conta na AWS
- Ter um par de chaves ssh



### Objetivo:

- Provisionar máquina virtual na AWS através do terraform
- Fazer a configuração de dois ambientes através do Ansible, um ambiente para desenvolvimento de Python e Django e outro com um servidor web.


### Passo a passo:

Executar o Terraform para subir a instância:

Para iniciar
`terraform init`

Para ver as alterações que serão feitas
`terrform plan`

Para aplicar as alterações
`terraform apply --auto-approve`

### Configurando acessos na AWS

Vá até a sua instância na console da AWS e configure o security group de entrada e saída para ipv4 e ipv6

#### Executando o Ansible

`ansible-playbook playbook.yml -u [user] --private-key [your-private-key.pem] -i hosts.yml`








# Domingão com Badtux_

## Day-01

### Atualizando o Descomplicando o Kubernetes - O Livro

Durante o processo de atualização do livro, precisamos validar os exemplos e os procedimentos que lá estão descritos.

E durante a atualização de hoje, precisamos criar algumas instancias na AWS, e para isso vamos utilizar *Infra-as-Code*, claro!

E a ferramenta escolhida pelo chat presente durante o Domingão foi o sensacional *Terraform*!

Então bora criar essa bagaça juntos!

#### Criando instancias EC2 utilizando o Terraform

O *Terraform* é umas das principais, se não a principal ferramenta para criar coisas nos *cloud providers* como a AWS, GCP, Azure e OCI.

Ele é desenvolvido pela *Hashicorp* utilizando *Golang*.

##### Instalando o Terraform

Primeira coisa que precisamos é realizar a instalação do *Terraform* em sua máquina.

É bem simples, o *Terraform* é apenas um binário *Golang* e também disponível nos repositório da maioria das distribuições Linux, como Ubuntu, Debian, RHEL, Fedora.

Caso esteja utilizando Windows ou MacOS, sem problemas! 
No Windows você pode instalar através do Chocolatey e no MacOS através do Homebrew.

Abaixo vamos conferir a instalação no Linux, mais especificamente no Ubuntu 22.04.


```bash
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common

wget -O- https://apt.releases.hashicorp.com/gpg | \
    gpg --dearmor | \
    sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg

gpg --no-default-keyring \
    --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
    --fingerprint

echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
    https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
    sudo tee /etc/apt/sources.list.d/hashicorp.list

sudo apt update

sudo apt-get install terraform
```


##### Criando o nosso Terraform File


##### Testando


##### Conclusão
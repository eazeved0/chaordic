# chaordic test by Edilson Azevedo

Projeto baseado no teste enviado pela Chaordic.

Workflow:

- A criação da instance é feita utilizando o Puppet e puppet-aws module
> sudo puppet apply create_Chaordic.pp

- Durante a criação o script de bootstrap é chamado (data_Chaordic.sh)
- Um dos passos do bootstrap é o clone e execução de um outro script chamado script.sh (é.. eu sei.. pouca criatividade). Esse script instala o nvm e seus modulos, além de configurar a criação dos nodes baseada na qtd de vpcus e a configuração desse node as service, assim garantindo o funcionamento mesmo no caso de um reboot
- O script de monitoramento está no cron (monitor.sh)

Tem outras magicas acontecendo mas todas elas estão bem descritas nos scripts.

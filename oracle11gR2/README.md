# Container com database oraclexe-11g

Seu "dump" para ser restaurado deve estar da pasta dump.

## Scripts
Os scripts são utilizados para criação do tablespace, usuario e efetuar alterações no database, todos os scripts executam auto ao iniciar o container.

### criar_usuario.sql
Cria o tablespace que será utilizado pelo schema, o usuario, da permissão DBA para ele e permissão para o dump dir dentro do container.

O arquivo pode ser alterado e a palavra "DUMP" trocada conforme desejado.

### alteracoes_banco.sql
As alterações no banco são para tonar as requisições mais rapidas e remover o apex e schemas desnecessarios, tornando o banco mais rapido e mais leve.

### import_dump.sh
Esse script será utilizado para restaurar o DUMP e remapear o schema para o criado no "criar_usuario" ou manter o mesmo.

## Rodando o container
docker-compose up -d --build
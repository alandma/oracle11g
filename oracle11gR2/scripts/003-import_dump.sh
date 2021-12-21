#!/bin/bash

# Variaveis
DUMP_FILE=exemplo.DMP
SCHEMA_OLD=old
SCHEMA_NEW=orcl
TS_OLD=old_data
TS_NEW=orcl_data

# Mover o DUMP para a pasta de restauração dentro do container
mv /u01/app/oracle/dpdump/${DUMP_FILE} /u01/app/oracle/admin/XE/dpdump/

# Importar do DUMP e remapear o schema do dump para o novo
impdp system/System#1@xe DUMPFILE=${DUMP_FILE} remap_schema=${SCHEMA_OLD}:${SCHEMA_NEW} remap_tablespace=${TS_OLD}:${TS_NEW}
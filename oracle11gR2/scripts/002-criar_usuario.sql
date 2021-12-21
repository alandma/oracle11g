CREATE TABLESPACE orcl_data LOGGING DATAFILE '/u01/app/oracle/oradata/XE/orcl.dbf' SIZE 100m AUTOEXTEND ON NEXT 100m EXTENT MANAGEMENT LOCAL;

CREATE user orcl identified by orcl default tablespace orcl_data;

GRANT DBA TO orcl;

GRANT read,write on directory DATA_PUMP_DIR to orcl;
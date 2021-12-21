FROM alandma/oracle11g-xe:11.2.0.2

COPY --chown=oracle:dba ./dump/ /u01/app/oracle/dpdump

COPY --chown=oracle:dba ./scripts/ /u01/app/oracle/scripts/setup
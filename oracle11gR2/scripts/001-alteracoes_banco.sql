-- ALTER SYSTEM SET LOCAL_LISTENER='(ADDRESS=(PROTOCOL=TCP)(HOST=localhost)(PORT=1521))' scope=both;

ALTER SYSTEM SET FILESYSTEMIO_OPTIONS=DIRECTIO SCOPE=SPFILE;

ALTER SYSTEM SET DISK_ASYNCH_IO=FALSE SCOPE=SPFILE;

ALTER profile DEFAULT limit password_life_time UNLIMITED;

-- Remover Apex e schemas não utilizados

@?/apex/apxremov.sql

drop package HTMLDB_SYSTEM;

drop user hr cascade;


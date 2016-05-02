#!/bin/bash
FECHA_HORA=$(date +%d-%m-%Y_%H:%M:%S)
pg_dump -i -h localhost -p 5432 -U postgres -F p -b -v -f "/home/backups/bk_musicdb_$FECHA_HORA.sql" musicdb
pg_dump -i -h localhost -p 5432 -U postgres -F c -b -v -f "/home/backups/bk_musicdb_$FECHA_HORA.backup" musicdb

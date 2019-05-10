#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE DATABASE terristeria_db;
    CREATE USER aamir with password '!frt_';
    CREATE DATABASE terristria;
    GRANT ALL PRIVILEGES ON DATABASE terristria TO aamir;
EOSQL

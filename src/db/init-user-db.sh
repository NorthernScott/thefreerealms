#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
	CREATE DATABASE loh_wiki;
	GRANT ALL PRIVILEGES ON DATABASE loh_wiki TO lohadmin;
    CREATE DATABASE loh_general;
    GRANT ALL PRIVILEGES ON DATABASE loh_general TO lohadmin;
EOSQL
#!/bin/bash

psql -U postgres <<- EOSQL
    CREATE USER homs WITH password 'homs';
    CREATE DATABASE homs;
    GRANT ALL PRIVILEGES ON DATABASE homs TO homs;
EOSQL

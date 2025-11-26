Integration with PostgreSQL database since keycloak requires its own keycloak database which is only accessible for keycloak usage

Before running this docker-compose.yaml file, ensure that PostgreSQL database is already configured

Setting up keycloak user in PostgreSQL:

Run this SQL script

DROP ROLE app_keycloak;

CREATE ROLE app_keycloak WITH 
    NOSUPERUSER
    CREATEDB
    NOCREATEROLE
    NOINHERIT
    LOGIN
    NOREPLICATION  
    NOBYPASSRLS
    CONNECTION LIMIT -1;

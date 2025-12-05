-- create kc user
DROP SCHEMA IF EXISTS kc_schema;
DROP TABLE IF EXISTS keycloak_db;
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

ALTER ROLE app_keycloak WITH PASSWORD 'mysecretpassword';

-- create kc schema and db
CREATE DATABASE keycloak_db OWNER app_keycloak;
CREATE SCHEMA IF NOT EXISTS kc_schema AUTHORIZATION app_keycloak;

-- Ensure privileges
GRANT ALL PRIVILEGES ON DATABASE keycloak_db TO app_keycloak;
GRANT ALL PRIVILEGES ON SCHEMA kc_schema TO app_keycloak;
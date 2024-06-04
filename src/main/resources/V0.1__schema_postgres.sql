CREATE SCHEMA holter;

CREATE ROLE "holter-devops" WITH
  LOGIN
  NOSUPERUSER
  INHERIT
  NOCREATEDB
  NOCREATEROLE
  NOREPLICATION
  ENCRYPTED PASSWORD 'md5ca1d66c4b07a7baf45c799a4f47bfee3';

-- CREATE DATABASE "holter-devops"
--     WITH
--     OWNER = "holter-devops"
--     ENCODING = 'UTF8'
--     LC_COLLATE = 'en_US.utf8'
--     LC_CTYPE = 'en_US.utf8'
--     TABLESPACE = pg_default
--     CONNECTION LIMIT = -1;

CREATE SCHEMA holter_ci AUTHORIZATION "holter-devops";
CREATE SCHEMA holter AUTHORIZATION "holter-devops";
-- Terminate existing connections
SELECT pg_terminate_backend(pid) FROM pg_stat_activity WHERE datname = 'djsite';

DROP DATABASE IF EXISTS djsite;

CREATE DATABASE djsite;

COMMENT ON DATABASE djsite IS 'Django database';

CREATE USER djsite WITH
	LOGIN
	SUPERUSER
	CREATEDB
	CREATEROLE
	INHERIT
	NOREPLICATION
	CONNECTION LIMIT -1
	PASSWORD 'vGD%pn7@%0jy';


GRANT ALL PRIVILEGES ON DATABASE djsite TO djsite;    
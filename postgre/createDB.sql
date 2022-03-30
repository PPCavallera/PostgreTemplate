CREATE DATABASE DB1;
CREATE ROLE postgres WITH LOGIN;

GRANT ALL PRIVILEGES ON DATABASE DB1 TO root;
\c db1
CREATE TABLE "table1"(
    "id" VARCHAR(4) PRIMARY KEY,
    "data" VARCHAR(255)
);


COPY "table1"
FROM '/docker-entrypoint-initdb.d/table1.csv'
DELIMITER ','
CSV HEADER;


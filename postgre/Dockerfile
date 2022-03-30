FROM postgres
COPY data docker-entrypoint-initdb.d/
RUN ls -la /docker-entrypoint-initdb.d/
COPY createDB.sql /docker-entrypoint-initdb.d/

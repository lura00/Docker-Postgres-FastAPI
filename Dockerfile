FROM postgres
ENV POSTGRES_PASSWORD solstad
ENV POSTGRES_DB mydb
COPY world.sql /docker-entrypoint-initdb.d/

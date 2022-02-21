FROM postgres
ENV POSTGRES_PASSWORD docker
ENV POSTGRES_DB world
COPY sql-tables.sql ./

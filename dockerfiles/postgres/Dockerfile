FROM alpine/git
WORKDIR /db
RUN git clone https://gitlab.com/sherifhussien1996/flickr.git

FROM postgres:9.6.8-alpine
WORKDIR /db
COPY --from=0 /db/flickr/sqlFiles /db
RUN mv tables.sql /docker-entrypoint-initdb.d/a-tables.sql
RUN mv procedures.sql /docker-entrypoint-initdb.d/b-procedures.sql
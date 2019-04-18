FROM alpine/git
WORKDIR /db
RUN git clone https://gitlab.com/ameniawy/ultimate-team-database.git

FROM postgres:9.6.8-alpine
WORKDIR /db
COPY --from=0 /db/DataBaseFiles /db
RUN mv services/tables.sql /docker-entrypoint-initdb.d/
RUN mv services/procedures.sql /docker-entrypoint-initdb.d/
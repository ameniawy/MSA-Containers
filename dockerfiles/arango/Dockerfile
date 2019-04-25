FROM alpine/git
WORKDIR /db
RUN git clone -b meniawy-docker https://gitlab.com/sherifhussien1996/flickr.git

FROM arangodb
WORKDIR /db
COPY --from=0 /db/flickr/sqlFiles /db
RUN mv arangoInit.js /docker-entrypoint-initdb.d/
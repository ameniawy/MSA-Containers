FROM alpine/git as clone
WORKDIR /app
RUN git clone -b meniawy-docker https://gitlab.com/sherifhussien1996/flickr.git

FROM maven:3.5-jdk-8-alpine as build
WORKDIR /flickr
COPY --from=clone /app/flickr /flickr
RUN mvn install clean package -pl discussion -am
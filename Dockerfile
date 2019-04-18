FROM alpine/git as clone
WORKDIR /flickr
RUN git clone https://gitlab.com/sherifhussien1996/flickr.git

FROM maven:3.5-jdk-8-alpine as build
ARG artifactid
WORKDIR /flickr
COPY --from=clone /flickr /flickr
RUN mvn install clean package -pl ${artifactid} -am


FROM openjdk:8-jre-alpine
ARG artifactid
ARG version
WORKDIR /
COPY --from=build /flickr/${artifactid}/target/${artifactid}-${version}-jar-with-dependencies.jar /
EXPOSE 3000
ENTRYPOINT ["sh", "-c"]
CMD ["java -jar ${artifactid}-${version}-jar-with-dependencies.jar"]
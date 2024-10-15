FROM alpine:3.16.3

COPY . /usr/src/poc
WORKDIR /usr/src/poc
RUN mvn clean && mvn package
USER m3
HEALTHCHECK CMD curl --fail http://localhost:3000 || exit 1


CMD ["java", "-jar", "/usr/src/poc/target/log4j-rce-1.0-SNAPSHOT-jar-with-dependencies.jar"]
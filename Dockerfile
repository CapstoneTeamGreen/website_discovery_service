FROM openjdk:17-alpine

WORKDIR /app

COPY target/eureka-server-1.0-SNAPSHOT.jar application.jar

ENV JAVA_OPTS="-Xmx128 -Xms64m -Djava.security.egd=file:/dev/./urandom"

ENV SERVICE_NAME="website_service_discovery"

ENTRYPOINT [ "java", "-jar", "application.jar"]
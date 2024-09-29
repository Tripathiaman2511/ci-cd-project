FROM openjdk:11-jre-slim

LABEL maintainer="iamtripathi.25@mail.com"

WORKDIR /app

COPY target/task-management-system-0.1.jar /app/task-management-system-0.1.jar

ENTRYPOINT ["java", "-jar", "task-management-system-0.1.jar"]
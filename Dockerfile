FROM openjdk:11-jre-slim
LABEL maintainer="iamtripathi.25@mail.com"
WORKDIR /app

COPY target/task-management-system-0.1.jar /app/task-management-system-0.1.jar

RUN mvn clean package

EXPOSE 3000

ENTRYPOINT ["java", "-jar", "task-management-system-0.1.jar"]
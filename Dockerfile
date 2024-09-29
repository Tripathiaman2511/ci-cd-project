FROM maven:3.9.6-eclipse-temurin-21-jammy

WORKDIR /app
COPY src ./src
COPY pom.xml .

RUN mvn clean package

EXPOSE 3000

ENTRYPOINT ["java", "-jar", "./target/task-management-system-0.1.jar"]
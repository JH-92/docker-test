FROM gradle:7.1.1-jdk8 AS build
WORKDIR /app
COPY . /app
RUN gradle build

FROM openjdk:8-jdk-alpine
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app.jar"]

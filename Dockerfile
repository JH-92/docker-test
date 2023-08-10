FROM gradle:8.2.1-jdk8 AS builder
WORKDIR /build
COPY . /build
RUN gradle build

FROM openjdk:8-jdk-alpine
WORKDIR /app
RUN ls
COPY --from=builder /build/build/libs/*.jar ./app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]

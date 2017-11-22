FROM openjdk:8-jdk-alpine
MAINTAINER Serkan Algül <serkanalgl@gmail>

ADD target/todo-microservice.jar todo-microservice.jar
ENTRYPOINT ["java", "-jar", "/todo-microservice.jar"]
EXPOSE 8000
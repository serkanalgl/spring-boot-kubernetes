FROM openjdk:8-jdk-alpine
MAINTAINER Serkan Algül <serkanalgl@gmail>

ADD target/user-microservice.jar user-microservice.jar
ENTRYPOINT ["java", "-jar", "/user-microservice.jar"]
EXPOSE 8000
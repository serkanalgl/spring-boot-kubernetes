cd ../../../todo-microservice
mvn clean install docker:build -DpushImage 

cd ../user-microservice
mvn clean install docker:build -DpushImage 
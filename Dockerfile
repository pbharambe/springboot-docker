FROM openjdk:11
ADD target/SimpleApplication.jar SimpleApplication.jar
ENTRYPOINT ["java", "-jar","SimpleApplication.jar"]
EXPOSE 8080
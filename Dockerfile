FROM openjdk:11
ADD target/SimpleApplication.jar SimpleApplication.jar
ENTRYPOINT ["java", "-jar","SimpleApplication.jar"]
EXPOSE 8080

#FROM maven:3.8.6-openjdk-11-slim AS build
#COPY pom.xml /usr/src/springboot-docker/pom.xml
#WORKDIR /usr/src/springboot-docker
##RUN mvn de.qaware.maven:go-offline-maven-plugin:resolve-dependencies
#COPY . /usr/src/springboot-docker
#RUN mvn -f /usr/src/springboot-docker/pom.xml clean package -DskipTests=true
#
#FROM openjdk:11
#COPY --from=build /usr/src/springboot-docker/target/SimpleApplication.jar SimpleApplication.jar
#EXPOSE 8080
#ENTRYPOINT ["java", "-jar","SimpleApplication.jar"]
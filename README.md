# springboot-docker


## Docker file configuration

---

```
FROM openjdk:11
ADD target/SimpleApplication.jar SimpleApplication.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar","SimpleApplication.jar"]
```

| Command     |                              Usage                               |
|-------------|:----------------------------------------------------------------:|
| FROM        | Fetch base image on top of which our custom image is to be build |
| ADD         |           COPY war or given file to destination folder           |
| EXPOSE      |            Expose port 8080 outside Docker container             |
| ENTRYPOINT  |  The command to be executed when the Docker image is run         | 

---

## docker-compose configuration

```
version: '3'

services:
  app:
    build: .
    image: spring-boot-img
    ports:
      - 8080:8080

```

To build and runn docker-compose

``
$ docker-compose up --build
``

--build is used to build images before starting the container instead of using the existing image

This command will start processing docker-compose.yml file. Since we specified build: . in docker-compose.yml file, it will look for Dockerfile in current directory & build a custom image using the same.

Once the docker container is up, try hitting http://localhost:8080/SimpleApplication/index/Pankaj

---

## Swagger API details

[Springdoc-openapi (swagger)](https://springdoc.org/#swagger-ui-properties)

OpenAPI descriptions will be available at the path /v3/api-docs by default: ``http://localhost:8080/v3/api-docs/``

To use a custom path, we can indicate in the application.properties file:
``springdoc.api-docs.path=/api-docs``

Now api description will be access as ``http://localhost:8080/api-docs``

Swagger UI will be available by default: ``http://localhost:8080/swagger-ui.html``
To customize the path of our API documentation. Modify our application.properties to include:

``springdoc.swagger-ui.path=/swagger-ui-custom.html``

So now our API documentation will be available at ``http://localhost:8080/swagger-ui-custom.html``

---


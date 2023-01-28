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


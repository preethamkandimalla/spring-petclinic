FROM --platform=linux/amd64 openjdk:8u282-jre
COPY ./target/spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar .
EXPOSE 8080/tcp
ENTRYPOINT ["java", "-jar", "./spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar", "--spring.profiles.active=mysql"]
FROM openjdk:21-jdk

ARG JAR_FILE=app/build/app-0.0.1-SNAPSHOT.jar

COPY ${JAR_FILE} app.jar

ENTRYPOINT [ "java", "-Dspring.profiles.active=prd", "-jar", "app.jar" ]
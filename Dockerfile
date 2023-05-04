FROM openjdk:21-bullseye

ARG APP_ROOT

COPY . $APP_ROOT

WORKDIR $APP_ROOT

# CMD ["java", "-jar", "java-spring-framework/target/java-spring-framework-0.0.1-SNAPSHOT.jar"]

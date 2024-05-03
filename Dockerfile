FROM amazoncorretto:17.0.11

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} registry_service.jar

ENTRYPOINT ["java", "-jar", "/registry_service.jar"]

EXPOSE 8761
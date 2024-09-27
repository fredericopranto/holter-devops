FROM gradle:7.6.2-jdk17 as builder
WORKDIR /app

COPY . .

RUN gradle build

FROM eclipse-temurin:21-jre-alpine
WORKDIR /app

COPY --from=builder app/build/libs/holter.jar app.jar

EXPOSE 8080

HEALTHCHECK --interval=30s --timeout=10s --retries=3 CMD curl --fail http://localhost:8080/actuator/health || exit 1

ENTRYPOINT ["java", "-jar", "app.jar", \
"--spring.jpa.hibernate.ddl-auto=${JPA_HIBERNATE_DDL_AUTO}", \
"--spring.datasource.url=jdbc:postgresql://${POSTGRES_HOST}:${POSTGRES_PORT}/${POSTGRES_DB}", \
"--spring.datasource.username=${POSTGRES_USER}", \
"--spring.datasource.password=${POSTGRES_PASSWORD}"]
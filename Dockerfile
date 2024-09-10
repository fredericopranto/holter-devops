FROM gradle:7.6.2-jdk17 as builder
WORKDIR /app

RUN addgroup --system group && adduser --system --ingroup group user
RUN chown -R user:group /app
USER user

COPY . .

RUN gradle build

FROM eclipse-temurin:21-jre-alpine
ARG APP_NAME=holter
ARG DATABASE_PATH

COPY --from=builder app/build/libs/$APP_NAME*.jar app.jar

WORKDIR /app

EXPOSE 8080

HEALTHCHECK --interval=30s --timeout=10s --retries=3 CMD curl --fail http://localhost:8080/actuator/health || exit 1

ENTRYPOINT ["java", "-jar", "app.jar"]
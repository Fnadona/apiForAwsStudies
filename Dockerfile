FROM openjdk:17-oracle
WORKDIR /app
RUN microdnf install findutils
COPY . .

USER root
RUN ./gradlew build -x test
CMD ["./gradlew", "bootRun"]
EXPOSE 8080

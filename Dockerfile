FROM openjdk:8-jre-alpine
RUN mvn clean package
COPY ./target/SpringBootWebApplication-0.0.1.war /app.war
CMD ["/usr/bin/java", "-jar", "-Dspring.profiles.active=default", "/app.war"]

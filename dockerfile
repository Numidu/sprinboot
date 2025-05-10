FROM openjdk:17-alpine
WORKDIR /opt

# Set the port Spring Boot should run on
ENV SERVER_PORT=8081

# Expose the same port
EXPOSE 8081

# Copy the JAR file
COPY target/*.jar app.jar

# Run the Spring Boot application
ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar app.jar --server.port=$SERVER_PORT"]

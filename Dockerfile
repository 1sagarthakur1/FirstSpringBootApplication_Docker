# Use official OpenJDK image
FROM openjdk:21-jdk-slim


# Set working directory inside the container
WORKDIR /app

# Copy your jar file into the container
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Expose the port your Spring Boot app runs on
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
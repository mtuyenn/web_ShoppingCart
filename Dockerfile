# ==========================================
# Stage 1: Build the WAR file using Maven
# ==========================================
FROM maven:3.9-eclipse-temurin-17 AS build
WORKDIR /app

# Copy Maven descriptor and source code
COPY pom.xml .
COPY src ./src

# Build the WAR file (skip tests for faster deployment)
RUN mvn clean package -DskipTests

# ==========================================
# Stage 2: Run on Apache Tomcat 10.1
# ==========================================
FROM tomcat:10.1-jdk17-temurin
WORKDIR /usr/local/tomcat

# Remove default Tomcat apps to keep it clean and fast
RUN rm -rf webapps/*

# Deploy the WAR file as ROOT.war (accessible at /)
COPY --from=build /app/target/ROOT.war webapps/ROOT.war

# Expose HTTP port for Render
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]

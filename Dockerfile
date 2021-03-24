FROM maven:3.6-jdk-8-slim

# Will create a directory inside the docker container
WORKDIR /platform-qa

# Copying commonlib from framework
COPY commonlib commonlib

# Copying templates from framework
COPY templates templates

# Copying aatf pom.xml from framework
COPY pom.xml pom.xml

# Expose port 8080
EXPOSE 8080

# Running the actual command
CMD mvn clean test
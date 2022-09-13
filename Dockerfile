
# Create an Image
FROM openjdk:8-jdk-alpine
WORKDIR /app
COPY . /app/
COPY /var/jenkins_home/workspace/job2/target/hello-world-java.jar hello-world-java.jar

EXPOSE 5000
ENTRYPOINT ["sh", "-c", "java -jar /hello-world-java.jar"]


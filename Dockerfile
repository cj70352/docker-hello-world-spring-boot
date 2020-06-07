#FROM adoptopenjdk/openjdk11:jdk-11.0.3_7
FROM openjdk:8-jdk-alpine
VOLUME /tmp
#ARG DEPENDENCY=target/dependency
ARG JAR_FILE
COPY ${JAR_FILE} app.jar
#COPY ${DEPENDENCY}/BOOT-INF/lib /app/lib
#COPY ${DEPENDENCY}/META-INF /app/META-INF
#COPY ${DEPENDENCY}/BOOT-INF/classes /app
#ENTRYPOINT ["java","-cp","app:app/lib/*","com.dockerforjavadevelopers.hello.Application","8080"]

#FROM openjdk:8-jdk-alpine
#VOLUME /tmp
#ARG JAR_FILE
#COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]

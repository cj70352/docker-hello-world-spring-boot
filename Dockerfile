#FROM adoptopenjdk/openjdk11:jdk-11.0.3_7
#FROM adoptopenjdk/openjdk11:jdk-11.0.3_7
#FROM openjdk:8-jdk-alpine
#VOLUME /tmp
#ARG DEPENDENCY=target/dependency
#COPY target/dependency/BOOT-INF/lib /app/lib
#COPY target/dependency/META-INF /app/META-INF
#COPY target/dependency/BOOT-INF/classes /app
#ENTRYPOINT ["java","-cp","app:app/lib/*","com.dockerforjavadevelopers.hello.Application","8080"]



FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD target/*.jar app.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]

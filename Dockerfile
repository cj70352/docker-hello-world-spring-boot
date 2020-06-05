FROM adoptopenjdk/openjdk11:jdk-11.0.3_7
VOLUME /tmp
mkdir target/dependency
ARG DEPENDENCY=target/dependency
COPY ${DEPENDENCY}/BOOT-INF/lib /app/lib
COPY ${DEPENDENCY}/META-INF /app/META-INF
COPY ${DEPENDENCY}/BOOT-INF/classes /app
ENTRYPOINT ["java","-cp","app:app/lib/*","com.dockerforjavadevelopers.hello.Application","8080"]

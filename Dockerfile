FROM adoptopenjdk/openjdk11-openj9:jdk-11.0.1.13-alpine-slim@sha256:60718fa9eb6b6bc4ab6fe7f3a9db31b8725fb63ebdda833a43f541c07792ff5c
COPY build/libs/*.jar seed.jar
EXPOSE 8080
CMD java  -XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap -Dcom.sun.management.jmxremote -noverify ${JAVA_OPTS} -jar seed.jar
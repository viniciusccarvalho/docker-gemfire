FROM java:8
VOLUME /tmp
EXPOSE 8080 1099 40404
ADD config/cache.properties config/cache.properties
ADD build/libs/gemfire-boot-server-8.1.0.jar gemfire-server.jar
ENTRYPOINT ["java","-jar","-Djava.net.preferIPv4Stack=true","/gemfire-server.jar"]

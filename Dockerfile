FROM java:8
VOLUME /tmp
EXPOSE 8080 1099 40404
ADD config/cache.properties config/cache.properties
ADD scripts/run.sh run.sh
ADD build/libs/gemfire-boot-server-8.1.0.jar gemfire-server.jar
CMD ["/run.sh"]
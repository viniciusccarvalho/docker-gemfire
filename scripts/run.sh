#!/bin/sh
    
JAVA_OPTS="-Djava.net.preferIPv4Stack=true -Dcom.sun.management.jmxremote.rmi.port=1099"
if [ "x$HOSTNAME" != "x" ]; then
    JAVA_OPTS="$JAVA_OPTS -Djava.rmi.server.hostname=$HOSTNAME"
fi

exec java -jar $JAVA_OPTS gemfire-server.jar

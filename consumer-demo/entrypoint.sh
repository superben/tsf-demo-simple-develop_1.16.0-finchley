#!/bin/sh -e

exec /usr/bin/java -XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap ${JAVA_OPTS} \
     	-Djava.security.egd=file:/dev/./urandom \
     	-jar /home/admin/app.jar ${RUN_ARGS} "$@"
#!/bin/sh -e

echo "The application will start in ${APP_SLEEP}s..." && sleep ${APP_SLEEP}
exec /usr/bin/java -XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap ${JAVA_OPTS} \
     	-Djava.security.egd=file:/dev/./urandom \
     	-jar /home/admin/app.jar ${RUN_ARGS} "$@"
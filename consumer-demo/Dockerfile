FROM openjdk:8-alpine

LABEL description="This image base on alpine3.7 include pinpoint-agent 1.7.3,curl,openjdk 1.8.0_151,glibc"
ENV SPRING_OUTPUT_ANSI_ENABLED=ALWAYS \
    APP_SLEEP=0 \
    JAVA_OPTS="" \
    RUN_ARGS="" \
    APP_NAME_ID=""

VOLUME /tmp

RUN apk add --no-cache tzdata
ENV TZ "Asia/Shanghai"

# Add a user admin to run our application so that it doesn't need to run as root
RUN adduser -D -s /bin/sh admin
WORKDIR /home/admin
COPY entrypoint.sh \
     ./target/app.jar \
     /home/admin/

# Authorization
USER root
RUN chmod 755 entrypoint.sh && \
    chown -R admin:admin /home/admin && \
    mkdir /tsf-demo-logs && \
    chown -R admin:admin /tsf-demo-logs

USER admin
ENTRYPOINT ["./entrypoint.sh"]
EXPOSE 18081

FROM registry.access.redhat.com/ubi9/nginx-122:1-45

USER 0

ADD www/ /opt/app-root/src
ADD www/ /www
#ADD www/ .
RUN chown -R 1001:0 /opt/app-root/src
RUN chown -R 1001:0 /www
#RUN chown -R 1001:0 /tmp/src
#ADD nginx.conf "${NGINX_CONF_PATH}"
USER 1001
# Run script uses standard ways to run the application

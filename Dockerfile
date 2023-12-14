FROM registry.access.redhat.com/ubi9/nginx-122:1-45

ADD www/ /opt/app-root/src
ADD www/ /www
ADD www/ .
#ADD nginx.conf "${NGINX_CONF_PATH}"

# Run script uses standard ways to run the application

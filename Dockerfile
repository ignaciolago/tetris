FROM registry.access.redhat.com/ubi8/nginx-122

ADD www/ /opt/app-root/src
ADD nginx.conf "${NGINX_CONF_PATH}"

# Run script uses standard ways to run the application
CMD nginx -g "daemon off;

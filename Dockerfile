FROM registry.access.redhat.com/ubi8/nginx-122

COPY www /www
ADD nginx.conf "${NGINX_CONF_PATH}"

EXPOSE 8080

# Run script uses standard ways to run the application
CMD nginx -g "daemon off;

FROM registry.redhat.io/rhel9/nginx-120:1-86

EXPOSE 8080
EXPOSE 8443

COPY www /www
COPY www /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/nginx.conf

CMD nginx -g "daemon off;"
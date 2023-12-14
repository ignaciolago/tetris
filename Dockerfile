FROM registry.access.redhat.com/ubi9/nginx-122:1-45

WORKDIR /var/www/html

COPY www/ .


COPY ./nginx.conf /etc/nginx/nginx.conf



EXPOSE 80
expose 8080

CMD ["nginx", "-g", "daemon off;"]

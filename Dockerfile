FROM registry.access.redhat.com/ubi9/nginx-122:1-45

WORKDIR /var/www/html

COPY www/ .

user root
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
chmod 755 /etc/nginx/conf.d/default.conf

USER 1001

EXPOSE 80
expose 8080

CMD ["nginx", "-g", "daemon off;"]

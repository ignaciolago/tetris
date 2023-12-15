FROM registry.access.redhat.com/ubi9/nginx-122:1-45

WORKDIR /opt/app-root/src

COPY www/ .

USER root
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf
RUN chmod 755 /etc/nginx/conf.d/default.conf

USER 1001

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]

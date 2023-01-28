FROM nginx:latest

EXPOSE 8080
EXPOSE 8443

COPY www /www
COPY nginx.conf /etc/nginx/nginx.conf 

RUN chmod 755 /tmp/nginx.pid

CMD nginx -g "daemon off;"


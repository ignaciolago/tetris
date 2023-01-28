FROM nginx:latest

EXPOSE 8080
EXPOSE 8443

COPY www /www
COPY nginx.conf /etc/nginx/nginx.conf 

CMD nginx -g "daemon off;"
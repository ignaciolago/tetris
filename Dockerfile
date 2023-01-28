FROM nginx:latest

EXPOSE 8080
EXPOSE 8443

COPY www /www
COPY nginx.conf /etc/nginx/conf.d/default.conf

CMD nginx -g "daemon off;"
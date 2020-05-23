FROM nginx
ENV NGINX_PORT 80
COPY conf/nginx.conf /etc/nginx/nginx.conf
RUN rm -rf /var/www/*
EXPOSE 80 
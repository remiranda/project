FROM ubuntu:16.04
RUN  apt-get update -y
RUN apt-get install nginx php php7.0-gd php-mysql -y
RUN service nginx restart
COPY --chown=www-data:www-data drupal/ /var/www/html
CMD ["nginx", "-g", "daemon off;"]
RUN ls /etc/nginx/sites-enabled
RUN rm /etc/nginx/sites-enabled/default

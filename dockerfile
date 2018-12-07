FROM ubuntu:16.04
RUN apt-get update -y
RUN apt-get install -y nginx=1.10.* php7.0 php7.0-fpm php7.0-mysql -y
RUN service nginx restart
COPY --chown=www-data:www-data drupal/ /var/www/html
CMD ["/bin/bash", "-c", "service php7.0-fpm start", "service nginx start"]
RUN rm /var/www/html/index.html

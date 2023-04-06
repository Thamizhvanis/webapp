FROM hshar/webapp
ARG  DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install apache2 -y
COPY index.html /var/www/html/index.html
COPY images /var/www/html/
ENTRYPOINT  apachectl -D FOREGROUND

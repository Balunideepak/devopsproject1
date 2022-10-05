FROM ubuntu
RUN apt-get update
RUN apt-get install apache2 -y
WORKDIR /tmp
VOLUME ["/myvolume1"]
ADD . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND

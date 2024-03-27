FROM docker.io/ubuntu
MAINTAINER Niharika niharika@example.com
LABEL apacheversion 2
LABEL this is apache test page
RUN mkdir /nikku
RUN apt-get update -y && apt install -y  apache2
COPY bliss-html /var/www/html
EXPOSE 80
ADD https://www.free-css.com/assets/files/free-css-templates/download/page289/bliss.zip /nikku
VOLUME /var/logs
WORKDIR /nikku
ENV NAME niharika
ENV TOPIC apahe
CMD apachectl -D FOREGROUND

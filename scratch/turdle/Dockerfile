# Turdle, the interactive database for your poops
FROM ubuntu:latest
MAINTAINER Kian Bradley <kbradley@ucmerced.edu>

ENV DEBIAN_FRONTEND=noninteractive

ADD ./nginx-config /etc/nginx/sites-available/default
ADD turdle.sql /tmp/turdle.sql
ADD initialize.sh /tmp/initialize.sh
RUN /tmp/initialize.sh

CMD ["nginx", "-g", "daemon off;"]

EXPOSE 80

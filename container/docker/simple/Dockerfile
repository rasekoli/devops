# docker build . -t nginx-sample:1.3.0
# docker run -d --rm -p 32769:80 --name webserver  nginx-sample:1.3.0

FROM ubuntu:18.04
MAINTAINER Oliver Rasek
RUN apt-get update
RUN apt-get install -y nginx
COPY website/index.html /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE 80

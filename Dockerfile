FROM ubuntu
MAINTAINER antra (antra@nexthope.net)
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
EXPOSE 80
#ADD static-website-example/ /var/www/html/
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git
CMD ["nginx", "-g", "daemon off;"]

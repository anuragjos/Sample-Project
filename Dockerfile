FROM centos:latest
MAINTAINER anil.webwillee@gmail.com
RUN yum install httpd -y \
 zip\
 unzip\
ADD \var\www\html
WORKDIR https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html
RUN unzip photogenic.zip
RUN cp -rvf photogenic/*
RUN rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/httpd" , "-D" , "FOUREGROUND"]
EXPOSE 80
FROM centos:7
MAINTAINER anuragkmr328@gmail.com
RUN yum -y update && \
yum -y install httpd \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page1/photoprowess.zip /var/www/html
WORKDIR /var/www/html
RUN unzip photoprowess.zip
RUN cp -rvf photoprowess/* .
RUN rm -rf photoprowess photoprowess.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

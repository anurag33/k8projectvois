FROM centos:7
MAINTAINER anuragkmr328@gmail.com
RUN yum -y update && \
yum -y install httpd \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page275/hangover.zip /var/www/html
WORKDIR /var/www/html
RUN unzip hangover.zip
RUN cp -rvf hangover-master/* .
RUN rm -rf hangover-master hangover.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

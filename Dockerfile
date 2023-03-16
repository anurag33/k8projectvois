FROM centos:7
MAINTAINER anuragkmr328@gmail.com
RUN yum -y update && \
yum -y install httpd \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page243/xlight.zip /var/www/html
WORKDIR /var/www/html
RUN unzip xlight.zip
RUN cp -rvf xlight/* .
RUN rm -rf xlight xlight.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

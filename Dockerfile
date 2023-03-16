FROM centos:7
MAINTAINER anuragkmr328@gmail.com
RUN yum -y update && \
yum -y install httpd \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page264/gleblu.zip /var/www/html
WORKDIR /var/www/html
RUN unzip gleblu.zip
RUN cp -rvf gleblu/* .
RUN rm -rf gleblu gleblu.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

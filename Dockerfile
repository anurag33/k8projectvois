FROM centos:7
MAINTAINER anuragkmr328@gmail.com
RUN yum -y update && \
yum -y install httpd \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page2/educational.zip /var/www/html
WORKDIR /var/www/html
RUN unzip educational.zip
RUN cp -rvf educational/* .
RUN rm -rf educational educational.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
